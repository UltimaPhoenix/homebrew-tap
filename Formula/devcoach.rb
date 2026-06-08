class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  version "0.3.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.17/devcoach-darwin-arm64"
      sha256 "dc1a3f439f0d9c2d57da11b618294f0e72f02d4340466cec1304ecc5207fe95e"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.17/devcoach-darwin-amd64"
      sha256 "c15e8b056e284cd90bc9adc5e497aa17d7508a468a20ce4a777db4953f93c016"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.17/devcoach-linux-arm64"
      sha256 "e3ba83d9b51bc481db115cb8a3f629d220ff75e2655353de1f6d2915b6ae6f8a"
    end
    on_intel do
      url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.17/devcoach-linux-amd64"
      sha256 "131d75ffcd6709d39faee499edab9fbaaef886c07d8cb30ce3252db000e89473"
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
