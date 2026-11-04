class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.65.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.65.1/volcano-macos-arm64"
      sha256 "8052c1195962f0e346a907232bd4aef245e818cdea8e531bc00dd20f01369660"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.65.1/volcano-macos-amd64"
      sha256 "9ff309938f14163358a10c075d5b0c4296e0ca7c96bfbb4ab8bb1ffd33dc6f13"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.65.1/volcano-linux-arm64"
      sha256 "18b39b43eb8c2d9ed977ca03da9e4030b097675d8c48a74c3a0ff59d36d806f8"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.65.1/volcano-linux-amd64"
      sha256 "eab8269ff21fb3c26d288b9e6c21862aad5e039e7aa386ecc1d6d9855aa4a864"
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
