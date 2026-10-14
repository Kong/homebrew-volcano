class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.45.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.45.0/volcano-macos-arm64"
      sha256 "e31609cd3c4982c4c536a027b9d212b1c13240a4bd6af651c62804a180b838ea"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.45.0/volcano-macos-amd64"
      sha256 "5a0207d95feb32a1c694a77254d439fa3c45bee9a25fd02cf3f5f9d8a3703509"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.45.0/volcano-linux-arm64"
      sha256 "d9b8e0cf1acc2978b64911bb46d5f1a9e07a7fb6f750d79f9677e847fcaf607f"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.45.0/volcano-linux-amd64"
      sha256 "eddbb4ab3858068e924b9252248318e5ce9307e281016b7903f71fa40fa259fe"
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
