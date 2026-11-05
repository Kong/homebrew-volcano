class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.66.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.66.1/volcano-macos-arm64"
      sha256 "90134eb89d976a38e36cd3cd98f2301e2f48efd2371d636213dd116e0484b167"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.66.1/volcano-macos-amd64"
      sha256 "42aeeed6fb0fd0672de291245f017abd8a4406a537e6c8f73bbeb5e5ec935fb1"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.66.1/volcano-linux-arm64"
      sha256 "3b2f0d70e5849b8e8a5e7dc33d90f08950bdc38995281d797ed6e75249868a69"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.66.1/volcano-linux-amd64"
      sha256 "a36171f21d0d0521b616cd9694f897368bad0fa04efcf46206d2923368fd3232"
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
