class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.37.3"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.37.3/volcano-macos-arm64"
      sha256 "a08e688cfbf953f010c3a3288275b6b84c14c37c3f080a4567d2cc6392ae7be2"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.37.3/volcano-macos-amd64"
      sha256 "3c81ce95e705cbe6278f56afcde3549bb8b9b15772a04d10c7007b861df358ef"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.37.3/volcano-linux-arm64"
      sha256 "7695a11fa3a09da468ac656f07d34d495916549c3a59096d9dc59fd9028fa635"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.37.3/volcano-linux-amd64"
      sha256 "77eae9aff3642048320495cf0c0515d29dd18057fb99d543787d525e0c5f54c7"
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
