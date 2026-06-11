class Devcoach < Formula
  include Language::Python::Virtualenv

  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/c5/c9/82f1fe32573ac7139a943052cd43032b104f3465db475a421db1363839df/devcoach-0.3.37.tar.gz"
  sha256 "4da7fef900d9438d067ce4d00f26484a76f45fc211fc4970a29ef190b3839936"
  version "0.3.37"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, Formula["python@3.13"].opt_bin/"python3")
    system venv.root/"bin/pip", "install",
           "--no-cache-dir", "--prefer-binary",
           buildpath
    bin.install_symlink venv.root/"bin/devcoach"
  end

  test do
    system bin/"devcoach", "--help"
  end
end
