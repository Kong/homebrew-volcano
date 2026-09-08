class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.26.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.26.0/volcano-macos-arm64"
      sha256 "c12e4f04f2005113e5a4fabe5e2b1cd4b909ee6562ccdc5896d120dfbdd2e6ae"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.26.0/volcano-macos-amd64"
      sha256 "119dc12a3eb637c1cb1f53f2dec33d77b86799497ca97e4f4f177c724960039d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.26.0/volcano-linux-arm64"
      sha256 "9997b2c4e32bce795d833e0e201f03a5e0b3a044fddd57a24616f66bdbbe41d2"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.26.0/volcano-linux-amd64"
      sha256 "d557395f332cef95ec9170031eb6a87d1b3421a43f0d4d757c6016bd18b5ebe3"
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
