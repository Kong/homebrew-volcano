class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.17.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.17.0/volcano-macos-arm64"
      sha256 "91a29e712638a7fe9616a77702c01996c9accf39f4f7357f3d1f9fa2b29c59e2"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.17.0/volcano-macos-amd64"
      sha256 "cd10ec4a8c7334c0e8ea49ea583a4075c183df50a80e49eeb77ef6bed1adab87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.17.0/volcano-linux-arm64"
      sha256 "e380beb066f4dd1580d72c5ece6f0d6a4454bf2458122292745a579af5fc936e"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.17.0/volcano-linux-amd64"
      sha256 "963ff48ea23c2483d66126447b20965e424a190efa1de792743d1ffc4c46c002"
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
