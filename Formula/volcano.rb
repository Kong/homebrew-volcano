class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.19.3"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.3/volcano-macos-arm64"
      sha256 "678c6b21f2e509f383b5f2c7c3d1dcf73a4fc328bd181213216500c4abfd1a44"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.3/volcano-macos-amd64"
      sha256 "5a049d8bb13773fd5006d8b01ae924395beaf6fcbe3cc7d62def1b1d69014fdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.3/volcano-linux-arm64"
      sha256 "3cec0059def005ac36db43207cbca8d871465828d6dd61c5d2532d6d2a2477a0"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.3/volcano-linux-amd64"
      sha256 "cdb18b6052ce7db80f7962e780da082dcab41f7daa28c0b1ee149c53ad56af1c"
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
