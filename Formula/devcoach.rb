class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/aa/0f/e748ebc32c1e65f59597d05004d6ba38c98a44b08967ecc5c4c336b0fdaa/devcoach-0.3.27.tar.gz"
  sha256 "88ffb45b16cc1fe8dfb92a75ea0d055f9efcf842f63324a07d5b9255db8da790"
  version "0.3.27"
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
