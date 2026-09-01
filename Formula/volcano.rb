class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.23.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.1/volcano-macos-arm64"
      sha256 "68dc56e7f785d1c18221c6d56ff9c630663ada0c82a5e0cc80e31fa84140ec06"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.1/volcano-macos-amd64"
      sha256 "31856c7752b78155015d37e335f7b197b26613b10454231fc63fadd85d9e0a03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.1/volcano-linux-arm64"
      sha256 "61de6cfda65df78a7554e76eee2c5b69efe5c7a10914d134cddb7134dfc9c6cc"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.23.1/volcano-linux-amd64"
      sha256 "88eff81d20490ee3f80b4a70302fa1ced38ff3aa8fca22609174d29ef8dd46e3"
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
