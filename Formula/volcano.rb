class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.68.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.68.0/volcano-macos-arm64"
      sha256 "20a306af9d331dc45dc65251b743f2af87681c6c71742ec05a28d435732ebff6"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.68.0/volcano-macos-amd64"
      sha256 "69a1c021a95bd0d82a33003677e4bd8d20241859b24c74c1ceefff447ca5e004"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.68.0/volcano-linux-arm64"
      sha256 "510df9dfc169e54611f9b418ed912fe5e817403ed3e9ad490c91926165eb7e93"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.68.0/volcano-linux-amd64"
      sha256 "1c790b7a5750243b559a271ecb83a7b31fc203742d85f82d96535447c17a9ef4"
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
