class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.58.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.58.0/volcano-macos-arm64"
      sha256 "3dc4db983d5539e4ac540daee4210286fa300c4db45df5e6aa405aac2c043777"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.58.0/volcano-macos-amd64"
      sha256 "f62acc52f5aa2ab5e2754535446174975fe73e9d13f33d304a9f8d4f8f039cc9"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.58.0/volcano-linux-arm64"
      sha256 "dbb7745b39605a947940a51a3191a975b87e71f1eb444b4b1865536347ca5196"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.58.0/volcano-linux-amd64"
      sha256 "47bddea697d5280c63fad6a6368db7c48a80698eaa9ffabc559af3324b01f5a7"
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
