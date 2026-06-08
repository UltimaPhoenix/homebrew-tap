class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.22"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.22/devcoach-darwin-arm64"
      sha256 "e7bbc454d2ea94b3e948f043fa8bd7ff9a2ae9f57f5dc4d9f02fb99ee7cf67c9"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.22/devcoach-darwin-amd64"
      sha256 "a3705cd277352a574b8d579a7a7acc198e4e73e2e15e97a317c338739c620ddd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.22/devcoach-linux-arm64"
      sha256 "90315ff92d09477b0de35ac448d526b9c9bc95fcd9887f521f36ec4e02f75669"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.22/devcoach-linux-amd64"
      sha256 "dea7b97d336aeca0dea12c3aa83d9f84e9c18e72a7e58b4346e94f27beb2b5d0"
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
