class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.44.2"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.44.2/volcano-macos-arm64"
      sha256 "1162c5c78185496a00b0363f59e34b63dd79048c270a2fdce397e658dc32f955"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.44.2/volcano-macos-amd64"
      sha256 "8f8ca8c20b875ccd71e5c0b069330b042608034f7c4345cc23f760fd2771b76f"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.44.2/volcano-linux-arm64"
      sha256 "bd021ed250c8bdc202f2ba31bd7e53e9a6aff76e4497ee64959032701183c4b7"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.44.2/volcano-linux-amd64"
      sha256 "c6e6c677d3910bf29c125f9545c2c9ec2bf3fb2c017ef33bc39eeb7abea2811e"
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
