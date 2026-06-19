class Devcoach < Formula
  desc "Progressive technical coach (MCP server) for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://registry.npmjs.org/devcoach/-/devcoach-0.3.64.tgz"
  sha256 "5c46c8333442a1ec6fdd729c32b59b398564883fc3d29c58e442adc4dc698902"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "devcoach", shell_output("#{bin}/devcoach --version")
  end
end
