class Devcoach < Formula
  desc "Learn from the code your AI writes, one short local lesson at a time"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://registry.npmjs.org/devcoach/-/devcoach-2.8.0.tgz"
  sha256 "c0fa9e281b050792cea78c4a40283c78a73c4d88f0c3d0061a83f2424b763269"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      Connect your agents with:  devcoach install
      devcoach registers hooks, an MCP server and a skill in your agents' config files.
      Homebrew cannot undo that on brew uninstall (formulae have no uninstall hook), so
      before uninstalling run:
        devcoach uninstall            # Claude Code + Claude Desktop (--all: also Gemini/Codex)
        devcoach uninstall --data     # also delete ~/.devcoach (lessons, profile, notebook)
    EOS
  end

  test do
    assert_match "devcoach", shell_output("#{bin}/devcoach --version")
  end
end
