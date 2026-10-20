class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.47.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.47.0/volcano-macos-arm64"
      sha256 "af6e884b766dc2d39de9ff2876a2725271a8728192802cca321be057ce1ae733"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.47.0/volcano-macos-amd64"
      sha256 "9764e3bfaf22965eeaa4070e11674b59053900fa406f3af69a880098ef710068"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.47.0/volcano-linux-arm64"
      sha256 "7dc7d2230359e33ee605f4f542f8e8479530314d6af7122e2c08050bc6f64481"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.47.0/volcano-linux-amd64"
      sha256 "36a42cc84c942ceedf6e87d6860171456763146f2dc52e680fc0dead5b110bec"
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
