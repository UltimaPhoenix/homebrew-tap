class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/f9/88/437f3173938c669188f3fa7e3e83f892788bace0dec3629833bd87918c42/devcoach-0.3.40.tar.gz"
  sha256 "00cbdd95534d36d35b5aaf51e3743e3e325a0a2808b9a82762155d2b42f58a47"
  version "0.3.40"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    python = Formula["python@3.13"].opt_bin/"python3"
    xy = Language::Python.major_minor_version python
    # Install from PyPI by name so pip uses the pre-built wheel.
    # Wheels require no build isolation (no internal `python -m venv` call),
    # which is necessary because venv creation fails silently inside
    # Homebrew's formula build environment on GitHub Actions runners.
    system python, "-m", "pip", "install",
           "--prefix=#{libexec}",
           "--no-cache-dir", "--prefer-binary",
           "--only-binary=devcoach",
           "--no-warn-script-location",
           "devcoach==#{version}"
    (bin/"devcoach").write_env_script(
      libexec/"bin/devcoach",
      PYTHONPATH: "#{libexec}/lib/python#{xy}/site-packages"
    )
  end

  test do
    system bin/"devcoach", "--help"
  end
end
