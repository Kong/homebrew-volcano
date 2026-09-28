class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.35.2"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.2/volcano-macos-arm64"
      sha256 "b5bd2daba232d7ed135a2e0f8e3eacf452f7af1fcfa07657aeeee8a315201523"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.2/volcano-macos-amd64"
      sha256 "4618641d62f37ecf2de0b2b4e760f394e587381602d25777ccdb48d41d737a0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.2/volcano-linux-arm64"
      sha256 "710d0e774c1a70503e48ce4b8616bf1d2c5311c8c1e55f76c96b25750aebaaac"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.2/volcano-linux-amd64"
      sha256 "7931e0da0c9e4e441eaaba0c0da9822ba00f9aafcc8c02b2f5d04e3fb5f460c4"
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
