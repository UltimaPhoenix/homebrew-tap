class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.20"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.20/devcoach-darwin-arm64"
      sha256 "41bdbd8c8c88b11f015133298847521c653ec0d64d31c149ca25940c6c65392e"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.20/devcoach-darwin-amd64"
      sha256 "eead8a13e36c070be7bc1e33b58ccdf7b9edd81657116887dcd7fa7619c71e6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.20/devcoach-linux-arm64"
      sha256 "a4616e713a229d2acd74f679b861d00998c4742424e941f2c55543084ca949fe"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.20/devcoach-linux-amd64"
      sha256 "4696d816f00dfb4a95c192129b37499ed4f64d276c6cc542d49d5febfc576c67"
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
