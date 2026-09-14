class Devcoach < Formula
  desc "Progressive technical coach (MCP server) for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://registry.npmjs.org/devcoach/-/devcoach-2.2.0.tgz"
  sha256 "3c726df2bd684e878e5d3b3a880f83e03bc59531141bb1468a21d101b4c2d584"
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
