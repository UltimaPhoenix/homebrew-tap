class Devcoach < Formula
  desc "Progressive technical coach (MCP server) for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://registry.npmjs.org/devcoach/-/devcoach-2.0.2.tgz"
  sha256 "d9ca9d6dff23b7629048eb251f03ba1ce41fc2e81d7c2cf48477e7118a22524c"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "devcoach", shell_output("#{bin}/devcoach --version")
  end
end
