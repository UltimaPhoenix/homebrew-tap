class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/c5/a7/fd217c367f9519e304e2583606686c60f6098c86936ceb158291a3b220ac/devcoach-0.3.41.tar.gz"
  sha256 "1d88442e201bc0db38be2219c2c5bb9c315c03c0d13a257de5b28e0673d1ff1f"
  version "0.3.41"
  license "Apache-2.0"

  depends_on "python@3.13"
  depends_on "uv"

  def install
    uv = Formula["uv"].opt_bin/"uv"
    python = Formula["python@3.13"].opt_bin/"python3"
    # uv venv is a Rust implementation — never calls python -m venv.
    # uv pip install is also Rust — no pip subprocess, no build-isolation venv.
    # Both avoid the silent python -m venv failure in Homebrew's formula
    # build environment on GitHub Actions runners.
    system uv, "venv", "--python", python, libexec
    system uv, "pip", "install",
           "--python", libexec,
           "--no-cache",
           "devcoach==#{version}"
    bin.install_symlink libexec/"bin/devcoach"
  end

  test do
    system bin/"devcoach", "--help"
  end
end
