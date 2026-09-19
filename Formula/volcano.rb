class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.32.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.32.1/volcano-macos-arm64"
      sha256 "025304f7dadfda37fb8ab696a2f2132924df013b60f809c29f240480706a2abd"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.32.1/volcano-macos-amd64"
      sha256 "828e30edcc693091f38927562c476c68e6860cffa5c6426d984831ffe7372d0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.32.1/volcano-linux-arm64"
      sha256 "ad48ebc8266c05223f0e785b669e377e742cac34170fd7a49214a49275f4dd6a"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.32.1/volcano-linux-amd64"
      sha256 "59b6ddb3e04fc68d625121c0878112bdf8616c9263bb3bf6cfec50f2b8194e20"
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
