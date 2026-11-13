class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.77.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.77.0/volcano-macos-arm64"
      sha256 "9dff70b4ac8011e830a25bcebea24fa86235b6bb4a455112c4b8e3c40cdb0e73"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.77.0/volcano-macos-amd64"
      sha256 "458b0a258ba3204b61444e0a4c962e1ae250f10227fc23d47316b28493cf7737"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.77.0/volcano-linux-arm64"
      sha256 "be8707e178510fceaf0da62e1f071bb12460e97b24408f0454d88ff99b16139b"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.77.0/volcano-linux-amd64"
      sha256 "a953d046193ac8a1bb76004da1ebe6c6e334d9f361ae30e2b323d5d7d7ec537c"
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
