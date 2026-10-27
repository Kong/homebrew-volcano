class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.52.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.52.1/volcano-macos-arm64"
      sha256 "41d136644c0667ebe0cecd1fc4e8d7ab750fa9031bb9c83febbdb5d1494301f0"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.52.1/volcano-macos-amd64"
      sha256 "64c8c15bfad3dd2253a5d403cb786cda00b0dc66fdbbe6299158d3449cb32e1f"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.52.1/volcano-linux-arm64"
      sha256 "4711fd2847f38771005c6ed742deeade04de27e93a3849fa9b891197bd462f08"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.52.1/volcano-linux-amd64"
      sha256 "98e2f87a7626e3021089dbb7dcae5d4b3ebecd942da3015ad99cdc5368f4e767"
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
