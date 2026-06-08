class Devcoach < Formula
  include Language::Python::Virtualenv

  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/0d/c8/2f7c95bb98a736cf10825c9b6b9b6b83a20071826e4cb0a7dd00086c679b/devcoach-0.3.24.tar.gz"
  sha256 "b5450e3111618f36941fed101b85892c63453dfd57a9b0e773f73cb280b9c87d"
  version "0.3.24"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    system venv.root/"bin/pip", "install", "--no-cache-dir", buildpath
    bin.install_symlink venv.root/"bin/devcoach"
  end

  test do
    system bin/"devcoach", "--help"
  end
end
