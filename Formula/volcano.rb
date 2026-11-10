class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.75.3"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.75.3/volcano-macos-arm64"
      sha256 "5008405b99af9ef1865b3e681b24a1acead2b909d4f080d3e15763b95ade03ba"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.75.3/volcano-macos-amd64"
      sha256 "58eb5ee7ebcd8c6ee632ce8f354e9aa4f2d521956a7ef9afdad4803611847bc1"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.75.3/volcano-linux-arm64"
      sha256 "b400dd4d5aa778b7e8ae81ac3364f1b32d22036d668bd0c234faaf6a8f3b29a0"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.75.3/volcano-linux-amd64"
      sha256 "a6fe676d8a471ad69b04638e9d43635f744310b975dc6590f96305fcd6a5c221"
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
