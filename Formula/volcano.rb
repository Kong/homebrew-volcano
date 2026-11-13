class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.80.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.80.0/volcano-macos-arm64"
      sha256 "5e9485c8427de421791373a16bc8ffebfc133acc7477a0dca68aa1b899b2fb6c"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.80.0/volcano-macos-amd64"
      sha256 "e53c55be56c66ed6eb13682231de8c9e18bc0e3cc730ce11c5586f452d67c403"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.80.0/volcano-linux-arm64"
      sha256 "a778fd26867e7139e74d9fb0e75ef01f42a52919cb21ed8fb9f1bf883168e071"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.80.0/volcano-linux-amd64"
      sha256 "8c2629fafe368842af6eab8b8c0c446ebc11258a125d6f93bef09bf2bad1926e"
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
