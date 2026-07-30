class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.19.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.0/volcano-macos-arm64"
      sha256 "85879a30cd5e7e70c89efc33cf1b18c65682d7ae3eb76a38ba7d49524a400c95"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.0/volcano-macos-amd64"
      sha256 "3d8bbf56a80a7de7c4079a490477648d18558a6fee41f19822e951637938a3d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.0/volcano-linux-arm64"
      sha256 "1402f6674b78850ae99312c99737e83f41aad596d413cfc345fef9ea9c4fce09"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.0/volcano-linux-amd64"
      sha256 "60752a2493d666291490e69c6413c046d051f4b17a69ad5087f36a169451a49b"
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
