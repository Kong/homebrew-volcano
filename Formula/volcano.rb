class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.83.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.83.1/volcano-macos-arm64"
      sha256 "679e3eb21687cf49ba9c4d974c39dfcf5f0136fba782f72c8abe447dab30ecab"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.83.1/volcano-macos-amd64"
      sha256 "4274db9ee01e6c0c7b314ae1227914788730883c446f51badd608c50012febd1"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.83.1/volcano-linux-arm64"
      sha256 "9cb844d7a7ecfab47fb12b9e4c587be092d30bf62e87f2dcca56d3246491ee98"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.83.1/volcano-linux-amd64"
      sha256 "d08d769747d39474754d805daef1a115b15e1be7f6d2833d3803a4a0719eda18"
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
