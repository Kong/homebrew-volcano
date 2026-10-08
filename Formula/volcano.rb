class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.42.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.42.0/volcano-macos-arm64"
      sha256 "5d9ffcce2f6e6840602d610f8e1d3ae1d0f4a15e367d9f80a2b1d9633203a5c3"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.42.0/volcano-macos-amd64"
      sha256 "49cfa155dccd0a29c4027242aa025743e9e7cd8aa49d9261441306f52db5a859"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.42.0/volcano-linux-arm64"
      sha256 "b0bd4a39980364be5f5b1b50965309ea0a9da54e5c2e4eb8591f353b4fd7a31e"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.42.0/volcano-linux-amd64"
      sha256 "6f294aaaa394b5523c6dbe6e15051e124e6c1873bf5a4bc985ce4ae06bdb3860"
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
