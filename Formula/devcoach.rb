class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.18/devcoach-darwin-arm64"
      sha256 "85e6477da312d69655ae374ba9f8d847ac583db3848b87397581a1b92df03192"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.18/devcoach-darwin-amd64"
      sha256 "8f48b1c1004d5ef139bcf2db6d69a0bc04b5d2fe71dbd1b5508fa5520978e5b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.18/devcoach-linux-arm64"
      sha256 "5c8fec676f035bb8ccb28460df75e7a1763160adf661f380e0d57555690b6c00"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.18/devcoach-linux-amd64"
      sha256 "c58a145ec0fa8f6d8a1fe78989c3e0cb0f350b35221f159f249895d9a5adba77"
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
