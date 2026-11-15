class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.81.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.81.0/volcano-macos-arm64"
      sha256 "b3f228695ef4418e174796248ca0369eae32e013174ab9deb8fc56ea0c215a08"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.81.0/volcano-macos-amd64"
      sha256 "f9b4212d1558cecfd325909a0661a5679e28e493e38dd13d87ca12415814d444"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.81.0/volcano-linux-arm64"
      sha256 "9ab132ec82a0fd7d9fe5c579a9b41e203040b9b70a7388310cce001d2758c05a"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.81.0/volcano-linux-amd64"
      sha256 "abac158baf03f06f67a14be0a16445cd019a19341dc9858dae5677872ff5c549"
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
