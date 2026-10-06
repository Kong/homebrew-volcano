class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.39.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.39.0/volcano-macos-arm64"
      sha256 "0d30d80b248a56e18bf8510cbea3cd839147cf5eb7eba6eaf8a26091cd9f0000"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.39.0/volcano-macos-amd64"
      sha256 "0e0bfa7cc2813e738af9948d9c3f53950273b97bc42941d2034f00ae7d632ca2"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.39.0/volcano-linux-arm64"
      sha256 "5fcfa533806fc42fd941ad7eda007dc2255b9d724787fb5c63c24953775e7247"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.39.0/volcano-linux-amd64"
      sha256 "d9e8768161149c4c1fe612d0c6e7a3368dced82d60eafa5825c8488572d0a407"
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
