class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/f1/df/0a1d1c4aa8f1b6fb4e7a9b8b4bfc27a77f810e641a20d801dce97fabc281/devcoach-0.3.53.tar.gz"
  sha256 "450d80fc42e5644863e46a075a963eec836c1d91c5c5ac8aa299e6e51b005d58"
  version "0.3.53"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.53"
    sha256 cellar: :any_skip_relocation, arm64_linux: "b4d89124a5d51c900bb03c93531f26f291b6438f2a9ff9f57d8fef368bc9f8c0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "359c5d4743e145407df0121c652564967cf3a4b53b7ccb45e75ec3c0ef703742"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f01f51b298637655c65af9a2c3739f67953d7a0dc00fbd509696d265ef08fab4"
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
