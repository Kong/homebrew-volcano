class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.66.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.66.0/volcano-macos-arm64"
      sha256 "869292600e7312d02f7ca51d99093d49e00d576255d5281a25e3fb3a45588ed0"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.66.0/volcano-macos-amd64"
      sha256 "ffe84f8cd1edbc0e5ea26b73f202207f50aeb2430e501ee14830052e6e607ef2"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.66.0/volcano-linux-arm64"
      sha256 "12c0dfc6ad895bafa0cee3f1b4767b82ce6b3e189168e99d9601597ed4f1fb6e"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.66.0/volcano-linux-amd64"
      sha256 "aec7493a611280517c43abd0bf20c430879ad49c7662ac15ed923e393a73c082"
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
