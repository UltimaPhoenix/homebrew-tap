class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.14/devcoach-darwin-arm64"
      sha256 "6529c8bcfb9b1cf9f917661a6006d705cd9c261bdd63e19c90458f82a12ee1de"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.14/devcoach-darwin-amd64"
      sha256 "7a3d6f57e688faa1558c7abafdb08dd94d14fe8b2ca279f88675a6986e10d871"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.14/devcoach-linux-arm64"
      sha256 "e2f7bc9c712aded4f847dfa1a029d247a31715d05b7e903949a65be240e59071"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.14/devcoach-linux-amd64"
      sha256 "2cd25b9e5f937e9e7cc33d8713441914bafbd3c351794d8ce343fe9114e969d4"
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
