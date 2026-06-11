class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/e8/5c/f915f7f4fc4d49f14ea32a15a0ea7ccfcd62ec189c60f406962f90fbb931/devcoach-0.3.39.tar.gz"
  sha256 "613cc6fdcdf588564ceec33809ab4344bf601ac9b466fc18fe06056b387c6b8e"
  version "0.3.39"
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
