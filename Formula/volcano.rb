class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.35.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.1/volcano-macos-arm64"
      sha256 "637cb9d4448b0939a8ffddf57c77ed2a393e5b8460d3d894e50c1b343631fd99"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.1/volcano-macos-amd64"
      sha256 "9912d7a95e36c4df362ba7cf1978cee8ea348dccb958ce80c040f02d7d67be51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.1/volcano-linux-arm64"
      sha256 "6eb5a133c5ee1b3b87ae9eaf3e2ab72f5f34a296996e63d4b2ceb6c21374b098"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.1/volcano-linux-amd64"
      sha256 "106b716b15d79cc4bd3149884198c5351757a9d44dfa70ba48f0d247fe6ee9e0"
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
