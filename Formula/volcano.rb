class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.56.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.56.0/volcano-macos-arm64"
      sha256 "b223dd9b2d5608482d34dcd8de3112ad057711f4e4cd98494a844c88b4169af1"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.56.0/volcano-macos-amd64"
      sha256 "ab93dc674d878a099742ce0d3fa95c0dc8b879b333e31318d824133b79ad58d9"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.56.0/volcano-linux-arm64"
      sha256 "f031b69e2bf534391de862cc67d096ff66288cc6edf84874da398b903a0d7749"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.56.0/volcano-linux-amd64"
      sha256 "380bafcece91d23fd177100bfbb8dec533391b1494f8fd54279e069d186a0b7f"
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
