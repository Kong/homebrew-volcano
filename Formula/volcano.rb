class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.46.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.46.1/volcano-macos-arm64"
      sha256 "552e16b8e43848ed665057aa6ad6c05b1060ec84f86278d39b15189631f5e396"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.46.1/volcano-macos-amd64"
      sha256 "b68054dc05b0dfb6d256527ee80749e05467ce80691f98df9c5de362b81319a3"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.46.1/volcano-linux-arm64"
      sha256 "5089b3052b333cfc12b6ab0e80d924a434b1b1f74dbcef16ef2f643c77d45a2b"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.46.1/volcano-linux-amd64"
      sha256 "14274cc178d6bb211d6595ba6ea6540d728ddd1ff40f4167986facfb8bff0fc6"
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
