class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.79.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.79.0/volcano-macos-arm64"
      sha256 "e2d82930121d49d0d9e87f13a7c7e49d1585fd3f1a0f090e5fbcde0512c5bb58"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.79.0/volcano-macos-amd64"
      sha256 "fafa423d399a883463b4d3e42f3f1db1851b8471f4495d7e6695381bb427636a"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.79.0/volcano-linux-arm64"
      sha256 "e338b0379250c5b441907497ebe72fae16a6722d2b5d8bbf1f9986e0696c2f95"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.79.0/volcano-linux-amd64"
      sha256 "24dc35ad97acea770bd5baf36f3eb87918876b31f47992b86e6c3282c719be07"
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
