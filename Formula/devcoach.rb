class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.15/devcoach-darwin-arm64"
      sha256 "28209e2ba214664ece10dd7ededd2d3cb8efe0b7c36bcac4de7daa05193273a5"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.15/devcoach-darwin-amd64"
      sha256 "d58a3e4f13e9df2fec637ac9cb9af48be9e1d8dd3cf27662e11919d9bb13c9b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.15/devcoach-linux-arm64"
      sha256 "bd0693eea4e148c81a714a5e894b6aafbeff5b5c885392cb14dd1ed3c9f12e2b"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.15/devcoach-linux-amd64"
      sha256 "d7a307f1301c74c907c76af47d4d2f19d81f511e4ddd31eddbd043c884d42221"
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
