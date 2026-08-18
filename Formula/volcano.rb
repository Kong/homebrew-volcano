class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.21.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.0/volcano-macos-arm64"
      sha256 "ab96f3c166cc47fb09087861c0ef04484d64cd772a17969676aacba94c56280b"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.0/volcano-macos-amd64"
      sha256 "1b219d814c4feb1729f82e61a0908cb77379252a874910fc7314f11611103c91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.0/volcano-linux-arm64"
      sha256 "4cf8df253fd9ea94b352d7f2cc775ccc54ea45f9b5915c9ead33d19fe044f6ea"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.0/volcano-linux-amd64"
      sha256 "bb1e2ea9aa030e716468e31deddbdb2ee2f02756b97516fcd8326a642bf0d9d3"
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
