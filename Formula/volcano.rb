class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.33.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.33.0/volcano-macos-arm64"
      sha256 "25cb872cc19904a3bc8d1b3daf5fff9b42b09e0cd17e14584564f013b9e1db8e"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.33.0/volcano-macos-amd64"
      sha256 "75c6b9962a8d164d0a7ae19aee56a2e8f3815cd62d12c866d8c3ee4ed31f2bca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.33.0/volcano-linux-arm64"
      sha256 "2336ff5c8d483ebb13019966b299837f8d600f7fd5382eef8d1f16a7a1dae3ec"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.33.0/volcano-linux-amd64"
      sha256 "b3e7166767dfaf8815f4990ae30f1c2021396dad7c7e0ffee3b318c0a32f0302"
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
