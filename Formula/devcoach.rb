class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/9e/3a/c5e034566514ff72df2e038eb08cf0d0f074f8711e47e2aa2a2e069da736/devcoach-0.3.50.tar.gz"
  sha256 "210a8c42159d39f029839122a1516aef50e77d1ab502432e338a02643b5d2797"
  version "0.3.50"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.50"
    sha256 cellar: :any_skip_relocation, arm64_linux: "e6ba8164791dcdf116d3a6acb61a01d16f2bc49996b5b2607a2c8928d25ad497"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "32795ae6c6aea065a2bdc386147c0129bf5502fc5577ab60bc9543b391c67391"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8db6ceaf038feecc96562eeabac8175622f5f73ee673480e3a30a6c38390b274"
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
