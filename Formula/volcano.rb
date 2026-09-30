class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.36.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.36.0/volcano-macos-arm64"
      sha256 "850b02f0c6cbebda4412bd40ab7d8250590f317de5ce494cce5984288d3b10ca"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.36.0/volcano-macos-amd64"
      sha256 "4b0248814d87f06e1bea6fac062da17417a41798432d907b406b643c002e7eed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.36.0/volcano-linux-arm64"
      sha256 "6fbf890a8a15efa81c8d69394910bf2899154723f57c7cd068ecf87e4460497c"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.36.0/volcano-linux-amd64"
      sha256 "283c98a3995dd4dbede798249b40a30050419dc4537d7a54b90a35f717550c49"
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
