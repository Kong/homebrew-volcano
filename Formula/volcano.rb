class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.82.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.82.0/volcano-macos-arm64"
      sha256 "7010bf35bb26b52ba7ab10980073ec15467f06c91eef7e7d9148394b37f21afb"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.82.0/volcano-macos-amd64"
      sha256 "2aabc8f8fe66746e195374715ca55c0a161d2c9bc8bc7d4a47bcbd972c80efce"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.82.0/volcano-linux-arm64"
      sha256 "f473822701e6b47a5f7ed131173e78bf7e93449356f98a0de412e4a98f8bdc9e"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.82.0/volcano-linux-amd64"
      sha256 "400515f22220f367a715b425b14f27f341ce9d081e6124fed5488e914e07cbc0"
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
