class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/74/01/dafc54ba9f3229c6a976370ffea28d8587f672620fc540f78601fd14557a/devcoach-0.3.28.tar.gz"
  sha256 "33895695048bf0228e0fc828ad3b562525b872443c1caf05737604ec984fd7f2"
  version "0.3.28"
  license "Apache-2.0"

  depends_on "python@3.13"
  depends_on "uv"

  def install
    ENV["UV_TOOL_DIR"] = libexec
    system Formula["uv"].opt_bin/"uv", "tool", "install",
           "--python", Formula["python@3.13"].opt_bin/"python3.13",
           "devcoach==#{version}"

    # uv writes '#!/.../bin/python' in the entry point shebang, but Homebrew's
    # Python venv only creates python3/python3.13 — not the bare 'python' symlink.
    # Write our own wrapper that calls python3.13 explicitly, bypassing the shebang.
    (bin/"devcoach").write <<~SH
      #!/bin/sh
      exec "#{libexec}/devcoach/bin/python3.13" "#{libexec}/devcoach/bin/devcoach" "$@"
    SH
  end

  test do
    system bin/"devcoach", "--help"
  end
end
