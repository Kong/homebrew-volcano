class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.37.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.0/volcano-macos-arm64"
      sha256 "4330dd8f607847daed1e0cf05ec52d4b43563386919dcb0e0a0027315b28370e"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.0/volcano-macos-amd64"
      sha256 "a2a9e3b65b1429564278edfdbaa61edce7be804cdd5f51d23c63129a0dacd987"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.0/volcano-linux-arm64"
      sha256 "02049664a9a9db518c3359ea5eb804a85aa311d3d94656b16e362477a8c7d5ab"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.0/volcano-linux-amd64"
      sha256 "fc99b4d5bfece5272c87badcc6e687a35b8f38aa03add9e98883e980be34647f"
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
