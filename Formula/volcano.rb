class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.43.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.43.1/volcano-macos-arm64"
      sha256 "1b4bdc7a6f7f54bde367d7b344c6522d6d003b16a41fa9e8976f1f7e0a4d3a52"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.43.1/volcano-macos-amd64"
      sha256 "78cf981844f3b5aebb3e407562dd24fc6f3519e6b79fbf559f5a7228019e0886"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.43.1/volcano-linux-arm64"
      sha256 "b8495d74fc679cd9c06e001b1d356df04eee0db853218703d1eebd14bc71a368"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.43.1/volcano-linux-amd64"
      sha256 "8d5886706567d8dd61d2372557c4822a02459dd9a0eb3bffd879ab4a69f82fbb"
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
