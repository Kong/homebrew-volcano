class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.78.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.78.0/volcano-macos-arm64"
      sha256 "e1bde8393d53b17cf35decaef29fb64d4491ff8153347c319b17e7a8233dabba"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.78.0/volcano-macos-amd64"
      sha256 "e95d1422a7e5d02e468ce695e20e54a46d667afa508b746902a3b194a73b2863"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.78.0/volcano-linux-arm64"
      sha256 "28428280d71be58661398eea36f4d8b4fcd5a443a601655296b34e31792037e4"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.78.0/volcano-linux-amd64"
      sha256 "c96329677702641561ed8ab3c41eebf4ff161ee1f99ca41ac8e900b96237ac7b"
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
