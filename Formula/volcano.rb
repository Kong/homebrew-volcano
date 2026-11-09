class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.75.2"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.75.2/volcano-macos-arm64"
      sha256 "799b7fd9d4c6a9ac3a5ffa7472c13535d5e1d8c36bbd0f42f1ae0efbfa3e98d1"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.75.2/volcano-macos-amd64"
      sha256 "babe0a00eba8c6521e208a6261aa1fc6ea694ef0aed661ad4c420b910ab2924a"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.75.2/volcano-linux-arm64"
      sha256 "f81280cd60b8464dfdacc460135900ef227f290b73e6b436e809545291018d00"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.75.2/volcano-linux-amd64"
      sha256 "7560c6c1954c3a9948f7833cac809c07632bbd21b5841f26c9bd146af4c1fb19"
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
