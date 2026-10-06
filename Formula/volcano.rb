class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.38.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.38.1/volcano-macos-arm64"
      sha256 "d687f4075dfd834a50f9b8b1d6d9ffcb1eb3b72e7582bff18ccacb7145ada303"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.38.1/volcano-macos-amd64"
      sha256 "b10cfb79d0e5e58450c3dc3d49f71b5099113220b3e00ae263e3e4846083d7c9"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.38.1/volcano-linux-arm64"
      sha256 "d1fd4c8921b0da3fa32c2ee607b35af7e4c99265d15f1519ca0907cb1abfb8cb"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.38.1/volcano-linux-amd64"
      sha256 "5d70d0581f3ec528bb9afb75e6ceaa464d1637e7bff9ece9d39ce3d124b934b7"
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
