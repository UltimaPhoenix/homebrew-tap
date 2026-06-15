class Devcoach < Formula
  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/93/95/49659d1d7b40daa9f6884ea1b180397b68074aad56c67f29f16cef7cbd88/devcoach-0.3.54.tar.gz"
  sha256 "a087a7065891c2c90f30bf4856ec4f4321318ab82a735b06ec40ebcfd1675236"
  version "0.3.54"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/UltimaPhoenix/dev-coach/releases/download/v0.3.54"
    sha256 cellar: :any_skip_relocation, arm64_linux: "a08b3229877623a2ca97f1e9ef1c0010fc5b45afb09b56bfb1474813244071b2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e7a264aa78d546b610702cd4a434424e2fd74a5320b34ce427a257fc97d9c10b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4e0bacbf452e0e9361ed1694d533dbe565ecfc21479a6fa793cccd3d3646eff6"
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
