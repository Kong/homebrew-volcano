class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.40.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.40.1/volcano-macos-arm64"
      sha256 "7ae2c85e1e47b4fe17a444be93908cdc7cc6d6db6d2d48c876419270c08bc491"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.40.1/volcano-macos-amd64"
      sha256 "2eb9e64cd76c1d31c65f15838ca7d54737f6409f2bf316b4c5a00d677f1b6cb3"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.40.1/volcano-linux-arm64"
      sha256 "2dd17c10fdf2cb55b273efcbad532255bf8968159373fd0953b1a5a0d0451e42"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.40.1/volcano-linux-amd64"
      sha256 "64b0246cdb3573cc330b2ab0ff627d777f0cb1279389245669b3758ef966838f"
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
