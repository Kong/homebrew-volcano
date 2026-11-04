class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.65.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.65.0/volcano-macos-arm64"
      sha256 "193ae21447ab4cea72f299e6cbfafcda01ad94cf38936b74b8e7c5ca2036d2f6"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.65.0/volcano-macos-amd64"
      sha256 "97875974f1718898158a7d9823360b647941ed9157127243dde7452d656d5a3a"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.65.0/volcano-linux-arm64"
      sha256 "c02a525d48d7b5780d30852298e3a54807544dc187d78dbc3950772c494175e5"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.65.0/volcano-linux-amd64"
      sha256 "d03fc3a286f5cca8d552b99be02343a8a11ba0b50248d16dd394573af94aadb0"
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
