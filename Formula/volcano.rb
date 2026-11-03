class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.61.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.61.1/volcano-macos-arm64"
      sha256 "6b50dd701602fa1b34dd288056ca0c9f5ac4e941bdcf0362797d9479a008eaef"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.61.1/volcano-macos-amd64"
      sha256 "6f61ae58cbe6b4e4dce6d7209517a47a94bf114af6198ddf9b5b3f23fb5b2dba"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.61.1/volcano-linux-arm64"
      sha256 "124b3cb81df31ad7e7e1fb6af57322d234db4cf213f30df83bb7bca60a89e8eb"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.61.1/volcano-linux-amd64"
      sha256 "0065f5f24fe4c31d89db5ebcd876b00de56814b011d311361ad969f321caa3ca"
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
