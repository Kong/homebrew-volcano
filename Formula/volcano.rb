class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.63.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.63.0/volcano-macos-arm64"
      sha256 "57ace6d4df02dc946164a7ecd9e11732e5b6ffe6ab2bcd5304fb25dfe472795b"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.63.0/volcano-macos-amd64"
      sha256 "c40a4e2effa3335f1fa1c4a11a40a6abcfbf51d74ece2235468edde499beec32"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.63.0/volcano-linux-arm64"
      sha256 "9cdd6fe0729aff5e2623d15bf870efcf063df9568b26ebe12df4f143e79e0f09"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.63.0/volcano-linux-amd64"
      sha256 "5b0b92cf602b1968ef897bd88d349f3056069d4e0cd1893a0b0eb8773d203005"
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
