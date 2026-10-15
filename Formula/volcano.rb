class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.46.3"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.46.3/volcano-macos-arm64"
      sha256 "0ca2f4889e3967a8d93fb040cac57bfb03e49f15324b27c34cea0a3c448118e5"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.46.3/volcano-macos-amd64"
      sha256 "2597e9d76e46a76507f4941ba3c419ae9d9610b741fcc1d0f4994fd90d724c4c"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.46.3/volcano-linux-arm64"
      sha256 "984ca7c202b1649ad626fb74b832e455e890141fd7ccd70cd853255d8831118a"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.46.3/volcano-linux-amd64"
      sha256 "87bcca57cf4d09848c62fe820cbadb40cad8b6df4601522899deb88beeff46ec"
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
