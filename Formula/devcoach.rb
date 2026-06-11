class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/2a/a4/5499062567105e51f379dff4769e000ea634c8fbca20dd4c0b0a24a4544a/devcoach-0.3.44.tar.gz"
  sha256 "fe3681b1947cdac9a34f15e0b3c89df9827dbcacd903e0458eca98133dc09a54"
  version "0.3.44"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.44"
    sha256 cellar: :any_skip_relocation, arm64_linux: "cfd378a0c13c87dee5f31d5c8bea1a42dcca8bf33e7c2ed9d60410454de96b30"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f1bda3642cbb463a73a27073e6c3fe0648865616d215af0a4eb9ac75703584df"
    sha256 cellar: :any_skip_relocation, tahoe: "73cce403a42ab7a92edde870d5da6365ce31b74aa813f582b2a184356d7845d9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "266d5594849f2fa277192f408cc8538ea5241a13975977e4b492a5425591f75a"
  end

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
           buildpath
    bin.install_symlink libexec/"bin/devcoach"
  end

  test do
    system bin/"devcoach", "--help"
  end
end
