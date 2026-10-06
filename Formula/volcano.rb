class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.39.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.39.1/volcano-macos-arm64"
      sha256 "c18d30171d4416f1a3b4222a568bb9ec875bb1a39ef0355b352e2d22173fdc28"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.39.1/volcano-macos-amd64"
      sha256 "b06c35142657d6eea56032c6cae1a1df7234bd4552cc0fc6ee56c1eee5a786b7"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.39.1/volcano-linux-arm64"
      sha256 "2483bfe86147f5c080a589f35da113e3fba933238081fe00ac8527b99bf0a4be"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.39.1/volcano-linux-amd64"
      sha256 "4361aa779ce5390f17e67e32768dfbe0a922fb9ed96b85d8050154aefd2694f8"
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
