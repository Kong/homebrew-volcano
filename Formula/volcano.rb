class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.40.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.40.0/volcano-macos-arm64"
      sha256 "f2da58ce7d4f88fb10ae2e36bfc867e4d50643a2e02923ff7ac5de3704f002f3"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.40.0/volcano-macos-amd64"
      sha256 "1f1fe3e8bf43db6aad3729cacab861d47fba2370bec7ab50d744459bc5d877d1"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.40.0/volcano-linux-arm64"
      sha256 "e41e9b22ede3218ca7dc9f1562c19a192668f63371412c25f950aaee6263b6d6"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.40.0/volcano-linux-amd64"
      sha256 "c898c4ab2f40ba789ab6422bb448fd298d9a263380d58eb8a55c7c994c5c3976"
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
