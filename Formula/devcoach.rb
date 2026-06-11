class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/e6/1c/e9b1bf275784e077e3e734ad1fa5cb7ff77c44b1552486107987b9437714/devcoach-0.3.45.tar.gz"
  sha256 "d858d375835b1a6066bed75933506d53304e20bb856694357cd3ae2c791369c5"
  version "0.3.45"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.45"
    sha256 cellar: :any_skip_relocation, arm64_linux: "84f8268bfb859440deee9b36e8a5d44d3003a194bb77c3f6e96dcfeb1804221d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a5a735921c56428c023dc5c6873ffe7467850d4536d5ed20a0b2fdcb55f36e0c"
    sha256 cellar: :any_skip_relocation, tahoe: "ca66b673378e5f6d9bcac095b4d56d354a6088f530ed4a9a0b1e695cc57c3ea9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1b8ba0a2cf12745ebab48c0ad26e84740be295f37a0d5c4270a69b4bb084e9dc"
  end

  depends_on "python@3.13"
  depends_on "uv"

  def install
    uv = Formula["uv"].opt_bin/"uv"
    python = Formula["python@3.13"].opt_bin/"python3.13"
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
