class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.27.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.27.0/volcano-macos-arm64"
      sha256 "d9fcf6d6c18c7e75b15c80887b5970d7528eb7d91bb5c96527bb031ce7c16a05"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.27.0/volcano-macos-amd64"
      sha256 "c05bfa0a3da8566aca449515044b66344c126092e69edd0b7f3568cde0a5d685"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.27.0/volcano-linux-arm64"
      sha256 "dbf35bb6e822a845168942b4f2eca9e0d1d46cbd85eef779958aecca3f1b81ea"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.27.0/volcano-linux-amd64"
      sha256 "b81427d621e9e0d51b6c8c8473c534cb4e4b97938892567b68951bf29f82281c"
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
