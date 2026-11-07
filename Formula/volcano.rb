class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.74.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.74.0/volcano-macos-arm64"
      sha256 "01f60686423ac7f8e75de449dd1acd2ad022789c01043b5e66c96046b87f56a7"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.74.0/volcano-macos-amd64"
      sha256 "c94aaf219b3583f7e443a73083c09796fb36efcebb35e945be147ca9a7734b93"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.74.0/volcano-linux-arm64"
      sha256 "0a8a4e9d0abdd8babb5ed88e45879418a54e00b2136e8c7bd3fd7025d5d3b565"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.74.0/volcano-linux-amd64"
      sha256 "36f9710c5f8d4507892317efcf0d01163561d9b68d9af6423f3625ef43769b54"
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
