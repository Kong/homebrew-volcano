class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.52.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.52.0/volcano-macos-arm64"
      sha256 "5e387eb19bd785b2f8273f222a53190a87d26dbdece9a7fd681f45d92439fa89"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.52.0/volcano-macos-amd64"
      sha256 "6c39f36965e6c8d986c554ac8821005c7117c89885c000f58d66e7615e87e268"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.52.0/volcano-linux-arm64"
      sha256 "e9d65358d53e56f296bacbc5f750ae62b0ec5b31dbbdff04948de64c9ec58240"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.52.0/volcano-linux-amd64"
      sha256 "3dec3e5b2e49719b41df32cbe1f9b4b7c995b8695d02e4117a7730cf2a314e7f"
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
