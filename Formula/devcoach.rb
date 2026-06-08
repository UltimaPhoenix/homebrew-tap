class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/36/fe/c50e45ba72830e81e837dee8482cd00144f4686835d78dd529a46b1b12e7/devcoach-0.3.29.tar.gz"
  sha256 "feeea16aae766ce55fc0f666c946f860a0da1e09c1fb6b949c170e0f42c2c02e"
  version "0.3.29"
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
