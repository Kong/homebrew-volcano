class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.35.5"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.5/volcano-macos-arm64"
      sha256 "0121be9e86e77ac78c1ac912841f5910fd632fa83aa5281b0abbd1cc85b66a60"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.5/volcano-macos-amd64"
      sha256 "a155e67e93952161d2b3a657f1dac151037e3fbd274afc16109332724c2002da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.5/volcano-linux-arm64"
      sha256 "994350af72c31c560828fdd3236b40b5472856026ad2631d5c809060e947fec1"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.35.5/volcano-linux-amd64"
      sha256 "dd137a01a7e69f90bbb7d59f7f6aded0b40e900ed7405c1ef7ff0dd73d62e7c7"
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
