class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/3c/00/ddf4f9eb056e10be7e89366349148dd12bb9193d68c78152c38b27f99be2/devcoach-0.3.49.tar.gz"
  sha256 "2b170e74069f23353d3228c6d1b75fd5041ce65100160bde6098a011374d2d7c"
  version "0.3.49"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.49"
    sha256 cellar: :any_skip_relocation, arm64_linux: "4b6fc13121a756813c63057973246f7fba3bbe60f1ef09e42405bb9dac03456d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a3fc028657d322c285fd8129ddc1d81b410317ecd8af50331a2713efc032947d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "203f6c9305e9681124f2b87cdc19e9500cd1045b78fda20204bb4fe62fa62b87"
  end

  # Intel macOS is unsupported: cryptography >= 49 ships arm64-only macOS
  # wheels, and building it from source needs a Rust toolchain Homebrew's
  # build environment doesn't provide.
  on_macos do
    depends_on arch: :arm64
  end

  depends_on "python@3.14"
  # uv is only needed to build the venv; brew autoremove can drop it afterwards
  depends_on "uv" => :build

  def install
    uv = Formula["uv"].opt_bin/"uv"
    python = Formula["python@3.14"].opt_bin/"python3.14"
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
