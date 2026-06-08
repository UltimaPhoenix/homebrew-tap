class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.19/devcoach-darwin-arm64"
      sha256 "c9fc41e74797698e13c9c5035c1ad4fd933353a21a01374f0a2f6c9dbb82b318"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.19/devcoach-darwin-amd64"
      sha256 "cf155c06010a4b6d8bfc04d73f192edb45a0ce4e5dfe690ee21f94638e2e0600"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.19/devcoach-linux-arm64"
      sha256 "8b72a8a6d5eeb2ba5bc58d37e975e54b2843d926561378e6f0f5f56a99b48de9"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.19/devcoach-linux-amd64"
      sha256 "79a7d034b63919914a23c7688a94b0254af66f7bee2451a4f9b8f738ae97538a"
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
