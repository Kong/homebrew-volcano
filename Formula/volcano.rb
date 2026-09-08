class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.25.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.25.0/volcano-macos-arm64"
      sha256 "92d5367bec88fa9969e4b2447bf645e4f18e887a4e25bc53cfb128d869a844b5"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.25.0/volcano-macos-amd64"
      sha256 "4836390d07aab2a7757e1fa9f21d928032e5b7451dd61f8f7c3f5bb5ac4ea0d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.25.0/volcano-linux-arm64"
      sha256 "598edf3c86c7b76631bfe163731c87424787e5b6b200a75bf62be5f27cd7a04e"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.25.0/volcano-linux-amd64"
      sha256 "5197ea55e3f5a0dd825f9854798c3aaaeb4347822afc39a274aa0497ffeb578e"
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
