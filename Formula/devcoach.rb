class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.16/devcoach-darwin-arm64"
      sha256 "9eb986ef1322dfc20a31e17370c2df7465b09e672eca8d0ceee4e4a463e010bd"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.16/devcoach-darwin-amd64"
      sha256 "1764dabf1c6571337a105f9e58f1eefd37fe94894bb14f471995f84368e25097"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.16/devcoach-linux-arm64"
      sha256 "4322b0659ab854453f6783234e091524233131dccea7db6c498f16b0cc943206"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.16/devcoach-linux-amd64"
      sha256 "193b4d36dd054c939f3875c153498ddbbf23647ac1a3058b399251618b782df6"
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
