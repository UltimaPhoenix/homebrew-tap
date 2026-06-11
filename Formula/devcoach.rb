class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/e6/1c/e9b1bf275784e077e3e734ad1fa5cb7ff77c44b1552486107987b9437714/devcoach-0.3.45.tar.gz"
  sha256 "d858d375835b1a6066bed75933506d53304e20bb856694357cd3ae2c791369c5"
  version "0.3.45"
  license "Apache-2.0"

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
