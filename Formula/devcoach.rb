class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/41/5d/1caa293de756f734639f6068a600c4d1a902e9462074de26223c100004b1/devcoach-0.3.52.tar.gz"
  sha256 "dd6d4ce28a7580cbdd00bcf746d8564df73bff99b8559ad0652b82b940a4480e"
  version "0.3.52"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.52"
    sha256 cellar: :any_skip_relocation, arm64_linux: "d410aa9a6fc0a50929e94b5d3e88f7181d7c5ad9bfff828d41e45b7b8b5c8bf3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1d74b637fab2247665ed2e7e11f8aad78bb95b14cde6e133651b1ebf7c9af74d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1c902c4e35f3632db2169a44cf33a353acf9db7a164ed0e48b1397a703b0ad85"
  end

  # Intel macOS is unsupported: cryptography >= 49 ships arm64-only macOS
  # wheels, and building it from source needs a Rust toolchain Homebrew's
  # build environment doesn't provide.
  on_macos do
    depends_on arch: :arm64
  end

  depends_on "python@3.14"
  # uv is only needed to build the venv; brew autoremove can drop it afterwards
  depends_on "uv" => :build

  def install
    uv = Formula["uv"].opt_bin/"uv"
    python = Formula["python@3.14"].opt_bin/"python3.14"
    # uv venv is a Rust implementation — never calls python -m venv.
    # uv pip install is also Rust — no pip subprocess, no build-isolation venv.
    # Both avoid the silent python -m venv failure in Homebrew's formula
    # build environment on GitHub Actions runners.
    system uv, "venv", "--python", python, "--python-preference", "only-system", libexec
    system uv, "pip", "install",
           "--python", libexec,
           "--no-cache",
           "--python-preference", "only-system",
           buildpath
    bin.install_symlink libexec/"bin/devcoach"
  end

  test do
    system bin/"devcoach", "--help"
  end
end
