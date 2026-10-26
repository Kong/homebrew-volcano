class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.51.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.51.0/volcano-macos-arm64"
      sha256 "3011147523a72c0bc2b8f57de064d8c2b6b5f96194aa0fecbe45af3e6c091d25"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.51.0/volcano-macos-amd64"
      sha256 "a55b6d722e1f8aa734dab149ed3d301f667058d3e47d8447ce0d5aafc4d52de0"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.51.0/volcano-linux-arm64"
      sha256 "558fdf1b07affbbdcf40d174a5d8fa0d317c27f0ee2edd3f17ccf06eb7eddf21"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.51.0/volcano-linux-amd64"
      sha256 "5b7c814b8ad450f94536d9fe8dcb3d3cb662710010e3edfff55133478b6f26bb"
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
