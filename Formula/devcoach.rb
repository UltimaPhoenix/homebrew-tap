class Devcoach < Formula
  desc "Progressive technical coach (MCP server) for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://registry.npmjs.org/devcoach/-/devcoach-0.8.3.tgz"
  sha256 "5f8895e3279ff3c1e5a1546213abf1ac651690c8f919f5693d9d196027db3f3f"
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
