class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.23"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.23/devcoach-darwin-arm64"
      sha256 "bd28594d12a7eee7c51be3f3f6b07353fb565df8fbeaf9f26f2cee3ebfd603bb"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.23/devcoach-darwin-amd64"
      sha256 "e7734bedf552d6cd3dd7121270de0e07add68608ad9827603bde6ff8f96cfc72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.23/devcoach-linux-arm64"
      sha256 "bb2d1fcb522d3b0c3a912c73140d32ca891ca324ff7135a5ba9cc8118473750f"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.23/devcoach-linux-amd64"
      sha256 "9ee9e89bcdb3c11a16d5d9769fd00dcdc1c35ad50fc598c805238ae5818288ef"
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
