class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.22.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.22.1/volcano-macos-arm64"
      sha256 "e9e7b052b00520fd98331857f4047abb33832aedca4c63889016b7d58e877e1e"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.22.1/volcano-macos-amd64"
      sha256 "bef72b3a94d219b51a07fc075bc0421041c56c6616886e1ebee9e3fb8e21891a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.22.1/volcano-linux-arm64"
      sha256 "d8f0942de6bc6796528524bb95bef1eaa677b73957438e0f932253cb82e2d7b1"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.22.1/volcano-linux-amd64"
      sha256 "3a3351908724857ad96d164b9accf7e409d26ea8dc768bdbb03a591ce6c15ee4"
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
