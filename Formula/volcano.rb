class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.19.4"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.4/volcano-macos-arm64"
      sha256 "8df2cf042714d9fc01314e8820564b1755c2e04d9094a18f902413efafd8db38"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.4/volcano-macos-amd64"
      sha256 "b6eea6a9c9b698c4ce1b7d02aefcb5d3b3b6a32d8a74d3850a1cd6f2531f16ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.4/volcano-linux-arm64"
      sha256 "e059a1c4d95010f6cc941f26b1536f2dc1ba8efe849429a2ee01b3699dec81cb"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.4/volcano-linux-amd64"
      sha256 "20ccb71ab3ca76fe43e7576fa071140cfc1ab7dd61cb0c2f6b4d3802d08a2cd2"
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
