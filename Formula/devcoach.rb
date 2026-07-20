class Devcoach < Formula
  desc "Progressive technical coach (MCP server) for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://registry.npmjs.org/devcoach/-/devcoach-0.9.2.tgz"
  sha256 "e6fb7f54bec1fff415869a35cb8f6cd75cd1f5427e748a64740e369bf19e8e5b"
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
