class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.34.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.1/volcano-macos-arm64"
      sha256 "679a1ec5e4bee677bc7f21ec69bb4bc421ba6b57f7eecd8feb44ac994e7bf118"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.1/volcano-macos-amd64"
      sha256 "454464fbb54a315df568db80ae18514196f3f19f38f44853563141220627241e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.1/volcano-linux-arm64"
      sha256 "b0ccd0579fa4eeea4453f24394987cac5d7186e3e9beb0f895d619a213fe5904"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.1/volcano-linux-amd64"
      sha256 "19c0f92507a774786d9d91556f4a1522eda3f308159b73e149592993ee4e297b"
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
