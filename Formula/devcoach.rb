class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/aa/0f/e748ebc32c1e65f59597d05004d6ba38c98a44b08967ecc5c4c336b0fdaa/devcoach-0.3.27.tar.gz"
  sha256 "88ffb45b16cc1fe8dfb92a75ea0d055f9efcf842f63324a07d5b9255db8da790"
  version "0.3.27"
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
