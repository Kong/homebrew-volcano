class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.37.2"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.2/volcano-macos-arm64"
      sha256 "71b79e05387ec6ad463ff7e67b7febe185eee6bc5d0d0f71794927b6adaec606"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.2/volcano-macos-amd64"
      sha256 "93f0fc5b36dc498b9d06c875eaea6209897867130decd0a66d8ce0875704143d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.2/volcano-linux-arm64"
      sha256 "c2063e6f3fcf8a62b8254f23258e09eed0ec202675c18323eb004f796c75a57c"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.2/volcano-linux-amd64"
      sha256 "1b6c8098391478f0d7be22cffc60980794a062cec4fb975e6b7d487fa2d8a147"
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
