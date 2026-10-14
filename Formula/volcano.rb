class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.46.2"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.46.2/volcano-macos-arm64"
      sha256 "0764ad006bfcc617127e56e905c1be45982011298d789debd5f456d2fdf9550c"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.46.2/volcano-macos-amd64"
      sha256 "3f703dfae928fbcbe7c58b4712dfb2b56727b5faccadcfe1dd1ea89f21357253"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.46.2/volcano-linux-arm64"
      sha256 "a2ba654382f94039416d80dad68de14e2ed3f8b96a89280f9875efceb8208d18"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.46.2/volcano-linux-amd64"
      sha256 "265b1acf4a6174161b73096211eb8840f1eceacb7637324ef4249f80fe444e9b"
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
