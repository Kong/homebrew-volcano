class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.34.2"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.2/volcano-macos-arm64"
      sha256 "c9435e02e355313a51a8ba473be9cbc8bc01ee29902d13635ba4f88972e9d39d"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.2/volcano-macos-amd64"
      sha256 "1b61ea01445192bb88775e93faffb1d259c7f1b615c515858ab14cc219d8762a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.2/volcano-linux-arm64"
      sha256 "3fb4ad73614e0acbb32387ef3a84c8470abacb1f0ca7d871503a0f917eae5f28"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.2/volcano-linux-amd64"
      sha256 "3d0a43811a368fb2ae2a0f76f3aed94ed9ed1a48e1c0327accd88545ed93c54d"
    end
  end

  def install
    bin.install Dir["volcano-*"].first => "volcano"
    chmod 0755, bin/"volcano"
  end

  test do
    system bin/"volcano", "--help"
  end
end
