class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.38.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.38.0/volcano-macos-arm64"
      sha256 "dbbdb46570b7dc1fe8898846ae23448f720a4e9f6a1c8c2e673f1985006ccf3b"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.38.0/volcano-macos-amd64"
      sha256 "789f4b7cfbe55647e350744dde71cda18462da0c5548128a8b7390796dd78fd4"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.38.0/volcano-linux-arm64"
      sha256 "33a02b5a696986a879c9f97103070886ad3950913d018462ca9b83b3c39f43e4"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.38.0/volcano-linux-amd64"
      sha256 "5a65d4decc17fd877317375a9c5bcbff77931af8db18af20c4493d475c4a58a7"
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
