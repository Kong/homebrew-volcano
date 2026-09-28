class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.35.4"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.4/volcano-macos-arm64"
      sha256 "b8dc47e1881b0337e8c810382b938fef83c842e23ff4c47f7660a5ac77fec1d0"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.4/volcano-macos-amd64"
      sha256 "ae7c489422e7bdf6b09849ec21d22e2b5b019bc32a5332423371fd4ac65a2d0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.4/volcano-linux-arm64"
      sha256 "25e198e813e20fed1596d6017ffc12a50da7949f28bce1e04de7fcae7d271ea8"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.4/volcano-linux-amd64"
      sha256 "b22d36daf8371f3b13dee87dff041ebaf95b65283bb09ca86371ce7b6c31f5a2"
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
