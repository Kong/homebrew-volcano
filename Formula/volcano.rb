class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.35.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.0/volcano-macos-arm64"
      sha256 "e7b728cbb64d30997d8888a90cd09507218a16be45c5e2d008c6b8ddae322b70"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.0/volcano-macos-amd64"
      sha256 "e95a265cef672088fb454648ff86aaf3882d1091d96d0bd70b92d6f930ca351f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.0/volcano-linux-arm64"
      sha256 "d5b126077eb6137f7166d86b4885719f83ba875642e53cc500279c69e566ce04"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.0/volcano-linux-amd64"
      sha256 "a6b9f79ba257cd83ed74267e828bff730aff559cf2ca1e54434fc626922c19ec"
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
