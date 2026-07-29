class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.18.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.18.0/volcano-macos-arm64"
      sha256 "6d0a79a14830702477050f0526e07ccddc694bfda1838e532a5eae14e461b04d"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.18.0/volcano-macos-amd64"
      sha256 "3df2e01b3d802855cb41e5e90a84a652272218a0ee639503de6e2a0754713a2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.18.0/volcano-linux-arm64"
      sha256 "a82552784418a5fa82817389aea4e85ab17f4ba5885ca84559f3512a6bfcdffd"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.18.0/volcano-linux-amd64"
      sha256 "9877448c90b9bcce96e20ebf6f433a2573731a97899e0d811b26bccfa9e1d434"
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
