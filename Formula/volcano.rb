class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.43.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.43.0/volcano-macos-arm64"
      sha256 "75f2c389879492a32717a60e7732da1bbf9eaef3d35ff9a5f17d6811240406d1"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.43.0/volcano-macos-amd64"
      sha256 "01723e6436ea1606823c1eebb7f48bc82f25bbd02cdebfed4c7cbcc93a4cb577"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.43.0/volcano-linux-arm64"
      sha256 "55709d47519aca557c2921c1dd205a22c7aa83ccafeb9c757f9421181694ae0c"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.43.0/volcano-linux-amd64"
      sha256 "70c4e51ab49f2df83a967edf3cfaddbe0b375314197c3598267c3a07b4e34ee6"
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
