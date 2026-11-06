class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.72.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.72.0/volcano-macos-arm64"
      sha256 "3eb0f1e31bcc22bb8624b36607f9ac0b362f0e0d18a02d4bb24cc7c14a34f816"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.72.0/volcano-macos-amd64"
      sha256 "b813d58f8329bed794ca1d43e6108a22d8ed3236aaaf6da7dd1a544328fc35d0"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.72.0/volcano-linux-arm64"
      sha256 "52db7422a63d13313568cdedc30a53c634a94cd2c8f179dea065a72e070f4b4f"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.72.0/volcano-linux-amd64"
      sha256 "d37a555d62427026afdacb7bb4f4ff2e456820dfd4fff125f34733a9b2c8667f"
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
