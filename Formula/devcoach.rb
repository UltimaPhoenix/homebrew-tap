class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/09/6e/fa2eff50a6c83e78df58954c6cdb1fdcfcb039663cf55fb680129f88551d/devcoach-0.3.47.tar.gz"
  sha256 "8b58ab4ee0dbd6335375ed257eda8ca17d859357b617ec6e29d479c547980972"
  version "0.3.47"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.47"
    sha256 cellar: :any_skip_relocation, arm64_linux: "ff01901cbd4c91425b320adf9fc32aa98cef95f69aef96458ef991a7d37d6341"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "65162ceb9b62b8c338aa678e2d23f5458f22d8b1e659dd70fabc5b9760d5c73f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "143784da61d6be497cd6760d2794236ddf1eddb4bb4d397d48b63d0edc2c631e"
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
