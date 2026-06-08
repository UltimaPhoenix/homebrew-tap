class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/72/02/8cbc7ab5a44333babce18c72126772ce01843a096924a0f278c987fd4c22/devcoach-0.3.26.tar.gz"
  sha256 "8bbf8b952bac6615d2a1682f04f5b768aafcaf5d57c7409e1c385eb90e1684af"
  version "0.3.26"
  license "Apache-2.0"

  depends_on "uv"

  def install
    ENV["UV_TOOL_DIR"] = libexec
    ENV["UV_TOOL_BIN_DIR"] = libexec/"bin"
    system Formula["uv"].opt_bin/"uv", "tool", "install", "devcoach==#{version}"
    bin.install_symlink libexec/"bin/devcoach"
  end

  test do
    system bin/"devcoach", "--help"
  end
end
