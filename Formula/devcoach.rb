class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.12"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v#{version}/devcoach-darwin-arm64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v#{version}/devcoach-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v#{version}/devcoach-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    binary = Dir["devcoach-*"].first
    chmod 0755, binary
    bin.install binary => "devcoach"
  end

  test do
    assert_match "devcoach", shell_output("#{bin}/devcoach --help 2>&1")
  end
end
