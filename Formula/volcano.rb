class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.21.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.1/volcano-macos-arm64"
      sha256 "55fb4a436f5675a38db24acdb3b03afd91d95bec15263ff686c18149caeb57f6"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.1/volcano-macos-amd64"
      sha256 "88d174fe2db933cc1b7162f6bb552c1b29090e0232252537e15ce76dba80986a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.1/volcano-linux-arm64"
      sha256 "f16cfd4625bf934f41d8b802659447d5531d409cdfa3c6c400b19a11e0f56f98"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.1/volcano-linux-amd64"
      sha256 "283a30655054d87076e9ff18e94dfc80577b0b1fe870d536b5079fee19e8f3e6"
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
