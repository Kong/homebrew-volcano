class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.37.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.1/volcano-macos-arm64"
      sha256 "8a0e831af3705733206693fd870272d9aa5b8e04892b435ec4c529fb174f802f"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.1/volcano-macos-amd64"
      sha256 "aa5e119fd1415ae10e7009f66619892300c8adcf9fd739aa0992c473c715acf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.1/volcano-linux-arm64"
      sha256 "5a452281ac5372daad306a218c604ffa694013346964495f2a7720e75a349c77"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.37.1/volcano-linux-amd64"
      sha256 "471503aa8cb7155f403ab5bde50e5509755df826be0f17df54ebe4e79ba4446f"
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
