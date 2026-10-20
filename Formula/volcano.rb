class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.48.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.48.0/volcano-macos-arm64"
      sha256 "1c05000e278324a79a3e9d411cdde87de64e18e21f010a4976a2713bfc9071d4"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.48.0/volcano-macos-amd64"
      sha256 "0f62ee35dc9dd27a03d3f27263ce4ee0990d99aecb16eeb9076f0da578ae7664"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.48.0/volcano-linux-arm64"
      sha256 "6c317b082efd052e0a35f563ce37c4cf2615ac397317866080e4696f0485ec1b"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.48.0/volcano-linux-amd64"
      sha256 "7bc79cd1ac3e5ac5202dce543c332cde3fc9a6f53ad93c96b8a8af87c88c187f"
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
