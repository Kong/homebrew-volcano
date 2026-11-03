class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.61.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.61.0/volcano-macos-arm64"
      sha256 "008ba291b23eaa7582c8be7d36d074c8d0aff1dbdb5873ea7aeded65d38f63f3"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.61.0/volcano-macos-amd64"
      sha256 "5b731ade831d6ade45e9c2b709c90de647393d38d2d9a29a08575438d2ea091c"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.61.0/volcano-linux-arm64"
      sha256 "ebc8183fe4355da1c1c0cb67f148a5b1984e0ceaffd0a6e35497cca755a75f78"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.61.0/volcano-linux-amd64"
      sha256 "39366174a1032d2d37df0ea8c1b0d163cf8dea7407563048fd42846be48b34ef"
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
