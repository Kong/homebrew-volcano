class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.34.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.0/volcano-macos-arm64"
      sha256 "13d43ab2c272f4ee41a6e798e212793dbc2fc384d90f5f3fb90761a386bb5634"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.0/volcano-macos-amd64"
      sha256 "52c092b387ed265ba24f63568c60688c94988cd7826ae113b3e2534737a3479b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.0/volcano-linux-arm64"
      sha256 "33917cf4fd6250b9cb649b6311b689ab288b23617c1d7e60605a31b522a52d84"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.0/volcano-linux-amd64"
      sha256 "dad619da74f35ea3781209ea0e1f932eb7e5c2aa80b83663d8429447beec8c40"
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
