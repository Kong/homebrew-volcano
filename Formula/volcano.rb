class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.72.2"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.72.2/volcano-macos-arm64"
      sha256 "77cbfae64b9b91cd18fe5a3632da89e12f8750098e1a06f0f03ab6ab0f258cd7"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.72.2/volcano-macos-amd64"
      sha256 "a8ea56659e9f3073a47a645217a23e7aff4748699ae30c7f05e586f00351d1ab"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.72.2/volcano-linux-arm64"
      sha256 "a6419a7607c6a0a7133aeeff1cf52467febf0111caa601e0bff05cd9e91ce5e5"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.72.2/volcano-linux-amd64"
      sha256 "5fed70c7a7839e235f3acdf775dadc1a6b6a1892f671d70beefab99521835b6c"
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
