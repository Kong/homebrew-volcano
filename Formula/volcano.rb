class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.31.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.31.0/volcano-macos-arm64"
      sha256 "808985f05fca5974aefe343662722c33ef859bb81304b315b78188d7d51ef78d"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.31.0/volcano-macos-amd64"
      sha256 "f62fa90718e2c16b7a786c46018248e2f95de3e2ff3cee74937eead37b229bab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.31.0/volcano-linux-arm64"
      sha256 "3469b19ea1daa85ab4e149866601541916f5fd66dbf7c872504cc8ad8142ae74"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.31.0/volcano-linux-amd64"
      sha256 "2fe7547ae46993842aec6b04c22f22823a52262a0528309b13fb6d13a02e4f97"
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
