class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.75.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.75.1/volcano-macos-arm64"
      sha256 "b8f0cb0149167c3ff57583e522af56427fa33356d86db6ab9881dc9ab2ff7e1d"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.75.1/volcano-macos-amd64"
      sha256 "78c7d60e1783281dbbb0183b12cba0ef0d52e84172609a7c2dfeb7e8b8648bd5"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.75.1/volcano-linux-arm64"
      sha256 "1624bdeec3c538b3e22fb40d0a43a10673a367246e7c902e782d56aa7f1cd0d5"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.75.1/volcano-linux-amd64"
      sha256 "3005c82ab0d7e71aa389ea999df9e178ddb765b2157273b601b90850dbab6fc7"
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
