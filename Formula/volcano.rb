class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.59.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.59.0/volcano-macos-arm64"
      sha256 "0a78ceb28c61a0477c6f3c12d2d1c28244a77dc4a4807af5584daf1b2afdcd85"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.59.0/volcano-macos-amd64"
      sha256 "b81ad645dd084380c3009b0b63921fc1a7ddeb54c11b00c40c26561193ce7a0d"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.59.0/volcano-linux-arm64"
      sha256 "ed7fa43926fcf1a02c61dfb2583492fe6bbd94be200565735359693621a22e7d"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.59.0/volcano-linux-amd64"
      sha256 "c837d50c408577b0c5a993b3fc70ef72fdcc520c2f6d77a7ed7db495a874ff1d"
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
