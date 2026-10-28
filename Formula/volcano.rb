class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.54.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.54.0/volcano-macos-arm64"
      sha256 "08dc38595a27f2cbec1c3889e92cb590c6020bdedf9b62c2ca36a12e2efdbcfb"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.54.0/volcano-macos-amd64"
      sha256 "a3d4fc696ac1294a13b0b1cebc84a2820624e5a60f3fdf23ea7e06352fdfdef6"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.54.0/volcano-linux-arm64"
      sha256 "54f771ac7529fa3fc83e0a7a2d9d10442609dc9d225d543e452b384782ba4349"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.54.0/volcano-linux-amd64"
      sha256 "c3a1ea7239bca385c72f20e0e0d1eba72091caa98cf816641a72ecb3ba0b4ad6"
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
