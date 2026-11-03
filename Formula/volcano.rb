class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.62.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.62.0/volcano-macos-arm64"
      sha256 "dcfc4b42f85ac1077fdf310f7cdbdbe4272a8533ea865dad55df3b57701eae0a"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.62.0/volcano-macos-amd64"
      sha256 "269e39a7f921c162e7c130d4fc322eef1e0908a940d6655f96301136af3ab555"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.62.0/volcano-linux-arm64"
      sha256 "8fe8eb126c510ac807ea96184c274bbe7b12a6212fbb0bc8671f53619d700953"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.62.0/volcano-linux-amd64"
      sha256 "f17d967e1401ee6cb6d7ef3805a2cea69eba6c21c96325b4508f3f2d3e6ff1f7"
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
