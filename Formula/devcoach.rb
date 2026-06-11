class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/a5/9a/9b37cf777249780b9836ce3f14d1873a8c0286b4a09f0345fe4ca17a7aec/devcoach-0.3.43.tar.gz"
  sha256 "5cd73832fa9abbc4c4a28f8ecc59aca9d5490678b7f2b656223c5df3dca72778"
  version "0.3.43"
  license "Apache-2.0"

  depends_on "python@3.13"
  depends_on "uv"

  def install
    uv = Formula["uv"].opt_bin/"uv"
    python = Formula["python@3.13"].opt_bin/"python3.13"
    # uv venv is a Rust implementation — never calls python -m venv.
    # uv pip install is also Rust — no pip subprocess, no build-isolation venv.
    # Both avoid the silent python -m venv failure in Homebrew's formula
    # build environment on GitHub Actions runners.
    system uv, "venv", "--python", python, "--python-preference", "only-system", libexec
    system uv, "pip", "install",
           "--python", libexec,
           "--no-cache",
           "--python-preference", "only-system",
           "devcoach==#{version}"
    bin.install_symlink libexec/"bin/devcoach"
  end

  test do
    system bin/"devcoach", "--help"
  end
end
