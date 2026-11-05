class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.70.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.70.0/volcano-macos-arm64"
      sha256 "6cf9d0fd8faa35554acca15f713d812b3193f5f29706fa7f1d688f284f83f4f8"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.70.0/volcano-macos-amd64"
      sha256 "285f8807673ba88191bf8c7c9fd9d3199650277e1921e6a491d4c20f0281f4b6"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.70.0/volcano-linux-arm64"
      sha256 "9987038010bb9fcb71e64f56e173266d4e8c0d9cd07d6be311589f6d6033d42c"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.70.0/volcano-linux-amd64"
      sha256 "a1c34b66c8836f934e06e3a80210d97f346221df0d3ac2e812852b8aab9bf539"
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
