class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.83.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.83.0/volcano-macos-arm64"
      sha256 "ed9cdf11ec50e7ae25aabb7b83a8d60afb5fb20c1c501f18b9b2ce717c947145"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.83.0/volcano-macos-amd64"
      sha256 "f8b59d57a4f952164196f224961f0381fb43af37038f6845e140ef8f8e1ff56b"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.83.0/volcano-linux-arm64"
      sha256 "000505825e16e2bf0f513f5b04a7369059c01f69a8eeb4f8079266d7cfdf1bab"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.83.0/volcano-linux-amd64"
      sha256 "3f3a9211342a1f96774e5ada8bc4754cde04766d4c92a792520fb30c06c2bd1a"
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
