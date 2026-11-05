class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.67.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.67.0/volcano-macos-arm64"
      sha256 "5f737ef97c68c26433029c8307a5bfb93d354a44f533eaadf16f4e52f6392626"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.67.0/volcano-macos-amd64"
      sha256 "f01f3108d0ec6af266680d8819a095fe9bcba8065245c724e495614d33788f4e"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.67.0/volcano-linux-arm64"
      sha256 "506ec109c3d6154cdcb5d0401be8e9a7c447a84c1b3a3937c264e24cec526a82"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.67.0/volcano-linux-amd64"
      sha256 "a3ed4abab7f789787b4392d8c60c66ff1bcf8fa24fa19626ccef1d4076b19e72"
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
