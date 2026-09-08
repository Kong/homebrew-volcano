class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.24.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.1/volcano-macos-arm64"
      sha256 "f4b64984cd97fa6221f8816adfb08c567506a85834844faac7be92222ff9856a"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.1/volcano-macos-amd64"
      sha256 "d104d483c3b0ad5cfb1270b3496e1abc6a80080001d8bb36e3a59e6bb11c8d9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.1/volcano-linux-arm64"
      sha256 "fc8ca8767aae7ad5d99c2ee170b1ca24c7523e6d5ae71984357d7ad089e23a13"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.1/volcano-linux-amd64"
      sha256 "e85245b451e7fefe4f7469fae5e384246881215337e8fa7b2ba7b5b505e26be3"
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
