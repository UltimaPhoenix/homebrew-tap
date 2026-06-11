class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/37/7c/2e6c25d4dc9518702c0485ed75b8fbb0bbb306c0a60e81056c3d00aa992b/devcoach-0.3.36.tar.gz"
  sha256 "c96623dd44fd874b9ece5e77aa71371dde2981c40b1466b46719503b7f341878"
  version "0.3.36"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    python = Formula["python@3.13"].opt_bin/"python3"
    system python, "-m", "venv", libexec
    system libexec/"bin/pip", "install",
           "--no-cache-dir", "--prefer-binary",
           buildpath
    bin.install_symlink libexec/"bin/devcoach"
  end

  test do
    system bin/"devcoach", "--help"
  end
end
