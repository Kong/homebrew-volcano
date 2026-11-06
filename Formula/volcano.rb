class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.72.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.72.1/volcano-macos-arm64"
      sha256 "56bfb148562c4e669bc4c08e3f639bbb2f2bd928950a2ade0821d37111c01fce"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.72.1/volcano-macos-amd64"
      sha256 "273662a7ad18d02a54f083de3438ec6dfee1d530cb21e0936c38da7dfd6065bf"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.72.1/volcano-linux-arm64"
      sha256 "ec9cb97382a17e3bf2f918b9aa1807c4052677b7051e675cc45b9468d55c6aac"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.72.1/volcano-linux-amd64"
      sha256 "6eac348ee27aecf3ce927ccac3e39522f3cb44c9e8f7cb2985544812f6c816de"
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
