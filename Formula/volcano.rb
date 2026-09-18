class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.30.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.30.0/volcano-macos-arm64"
      sha256 "d8772cb794fd605533eac62e54357d8133cc4312fd9eecec6b6f54f4d711410a"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.30.0/volcano-macos-amd64"
      sha256 "7762e77d3632efe7d7e6718820036840a29cbaab0183bb9ffbb6707622a95cd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.30.0/volcano-linux-arm64"
      sha256 "36222aa208fc41c9c106f008171d417f311473275122456e6bf36cd3c39bc813"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.30.0/volcano-linux-amd64"
      sha256 "278fb2864898fd84a8b19b0fe3c1941297a68e6673c1abae8cb9372d807f2ffd"
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
