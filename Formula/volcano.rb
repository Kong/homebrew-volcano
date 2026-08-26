class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.23.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.0/volcano-macos-arm64"
      sha256 "8e114c3b10787b883237a6082e6269d8b87cc0d9ea15784b865036263827cd90"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.0/volcano-macos-amd64"
      sha256 "313ec6b5e8a797981ba7f4c065b28f2b0f637d438bec14b324920da4bc004cc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.0/volcano-linux-arm64"
      sha256 "cc4901a2a405375b1fe5c64ae181865b5d87c4c55a98ffcc544717fdb278c715"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.0/volcano-linux-amd64"
      sha256 "365e6c7ea3e48f56170624074e533c273f5c87d589f7fe60474e23be6ed3a9bb"
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
