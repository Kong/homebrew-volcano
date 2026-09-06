class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.24.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.0/volcano-macos-arm64"
      sha256 "c86b7ca4398eec02ff84a3536d79f0d3948fb704403c92f9e3fd558e37429a58"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.0/volcano-macos-amd64"
      sha256 "bcdc7944a5d0a15c77f7629b5ed5aa1e1c2bd07ebb507bedcc9ea5f878b79b74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.0/volcano-linux-arm64"
      sha256 "b789a569ebb1c26c064dea0cd045279a0f9f3b89fb63b9d0afac62ed685dde1c"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.0/volcano-linux-amd64"
      sha256 "9924a6ad37f7264a5228695364a6704fde123e04a9c56acec259ffc48ed265c4"
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
