class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.23.2"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.2/volcano-macos-arm64"
      sha256 "1b73a41dbaf088b97c4e10143da19a8b4621df78ece6ccf3de81ec604bca6787"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.2/volcano-macos-amd64"
      sha256 "c8fa7eda3bc1ac3da1b227c98575f9b2142bf6dd15378bb4fe0b80186df9cd56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.2/volcano-linux-arm64"
      sha256 "94f04de8341d162791c59be4232a7337e095efb62bdb377b23723493792ee1de"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.2/volcano-linux-amd64"
      sha256 "26750534500f41b6584d1b578ae3b6c12fd46111aa9ac4793cfecd818cf84445"
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
