class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/6a/d2/3f0eefe8349d507b4bb66035ee27cd2892fb90d2b734a126f3cfb56d8762/devcoach-0.3.51.tar.gz"
  sha256 "213d6b81feb6c72c81ff47d5c0679eb808248f9a3c26a3962893035f34123ecc"
  version "0.3.51"
  license "Apache-2.0"

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
