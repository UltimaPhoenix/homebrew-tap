class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.21"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.21/devcoach-darwin-arm64"
      sha256 "13af36453a3688ac7b8eb881ffae4f15fdda5c952356d6f78fed083b89292124"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.21/devcoach-darwin-amd64"
      sha256 "9b3deff92b05bf7ff6d2d7237aeb97ad685ffc80385296789eb2ad41c1e60153"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.21/devcoach-linux-arm64"
      sha256 "12aaae2ff1a21f96510b1287f21818aa36d1d35ef0eb19ea89925a7736a25fbe"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.21/devcoach-linux-amd64"
      sha256 "b2d51d03ee9032332e4a5040ca92906338db60043963232c710d6aafc596559a"
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
