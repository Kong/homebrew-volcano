class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.84.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.84.1/volcano-macos-arm64"
      sha256 "d913e9d79fef852b45bd3431a3246633754972ecef78ac73448fe2eaeb565b12"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.84.1/volcano-macos-amd64"
      sha256 "6d5d252bc2e6d7993a82b93d016e39d2552c578672abaeeb6be39d89e3bc3867"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.84.1/volcano-linux-arm64"
      sha256 "d9fac1f9a60a68281f79b7a0e02345972f8b2f67425c814c25bbaa2c5062f57c"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.84.1/volcano-linux-amd64"
      sha256 "719da6ea814aa45dc2595f8b5cabd9611e841d58de2014d886cf3427dde8dc38"
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
