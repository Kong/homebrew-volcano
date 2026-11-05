class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.69.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.69.0/volcano-macos-arm64"
      sha256 "23e3f66ad9d74ff6b110ecbeba6419ea9babfb25adcea617ca3a54eebc75bf89"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.69.0/volcano-macos-amd64"
      sha256 "a49033eaaae3c7e0d4bf2c85b920eeffb97278e1d9f8439c49eeb2765812a240"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.69.0/volcano-linux-arm64"
      sha256 "c474b54a25be02b6c814904382b471086fd3f371e3a15e11776675735c789312"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.69.0/volcano-linux-amd64"
      sha256 "97996bf584d88e534e274d054601e45e8db4a97eba51292e8d5aa30395fe7f50"
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
