class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.50.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.50.0/volcano-macos-arm64"
      sha256 "2d8b81a5b38d7c50db628d8d3ace5904aa08662cb005328669013a4944f09a05"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.50.0/volcano-macos-amd64"
      sha256 "5ab1d2bacaf5bff9570fc67e11311f29250556a59ebd14397a131c64b038232e"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.50.0/volcano-linux-arm64"
      sha256 "7b78244ba24954890ae078ca44bd00bb06cba86bb0306adefdd26083c3960a89"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.50.0/volcano-linux-amd64"
      sha256 "1d7b1733afd055340cf4c07efe8f700ab7f40758261237b0ae7917ea36339991"
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
