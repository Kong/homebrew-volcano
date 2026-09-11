class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.28.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.28.1/volcano-macos-arm64"
      sha256 "1854a762994f9d50304bd6566d3ef4e17fc7aa53612e1cb846628c1abf8aefc1"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.28.1/volcano-macos-amd64"
      sha256 "33b2b03460c1ca47a0cc4522544c956b133d538c406316634172f9ddb43c4938"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.28.1/volcano-linux-arm64"
      sha256 "62f75f5d848904d439aff44417793d35e0a83226022593bd61d484964f3cb353"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.28.1/volcano-linux-amd64"
      sha256 "c8c25f0dd718037fed20c3e65efd876982663f1cf650903aa5c82dca7ac858cc"
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
