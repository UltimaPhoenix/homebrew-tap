class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.24"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.24/devcoach-darwin-arm64"
      sha256 "fa728f6c6d284de643604119485c24971538cc93d339591a1ccd205b89300a57"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.24/devcoach-darwin-amd64"
      sha256 "01ad395fba9997a02aa87fb06fb7db116ed4d15d51e03a493df5c75ccca00a38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.24/devcoach-linux-arm64"
      sha256 "c5b3304c3e58974a90364a1fddddf6387b251b944c096aa4c4ff18d44fad6044"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.24/devcoach-linux-amd64"
      sha256 "c15aa11f2250031491b62b584757f984cfdcd861940c4827ad996682c6128acd"
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
