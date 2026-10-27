class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.52.2"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.52.2/volcano-macos-arm64"
      sha256 "9d3a9d5ad50e6fb0ddcf43dd5fb9bedfa40a7771ba8d23a496a69d0a424f41aa"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.52.2/volcano-macos-amd64"
      sha256 "a8c5ab90387cd021c0b3a8ad0d71506cfc8d87c86cfa57f6b76f9766c515e057"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.52.2/volcano-linux-arm64"
      sha256 "592b0fd02004a07e43a8bc6e92509175dc4e1a86498eb937a0a3dfeabb41b2fe"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.52.2/volcano-linux-amd64"
      sha256 "b2c9f71b9bd7cfc0b75232b7aab52077c106c1f3d93bfe265f9fe59ffd63d30b"
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
