class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/b1/14/0639e96e712f2a929448b2d78ba30f1bf9bbc800336e3226367c2291aead/devcoach-0.3.38.tar.gz"
  sha256 "699b0cef7cf597fccf55408859301d0d179364a8877d87cbd01bb571ce4be3f1"
  version "0.3.38"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    python = Formula["python@3.13"].opt_bin/"python3"
    xy = Language::Python.major_minor_version python
    # Install directly into libexec with pip --prefix; avoids python -m venv
    system python, "-m", "pip", "install",
           "--prefix=#{libexec}",
           "--no-cache-dir", "--prefer-binary",
           "--no-warn-script-location",
           buildpath
    # Wrapper that sets PYTHONPATH so the entry point finds installed packages
    (bin/"devcoach").write_env_script(
      libexec/"bin/devcoach",
      PYTHONPATH: "#{libexec}/lib/python#{xy}/site-packages"
    )
  end

  test do
    system bin/"devcoach", "--help"
  end
end
