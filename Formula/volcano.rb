class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.44.1"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.44.1/volcano-macos-arm64"
      sha256 "d5577a6c131a6e7b1294e9ccd49df7e91263db8d515ada0f5f00c4a8bd56ba14"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.44.1/volcano-macos-amd64"
      sha256 "81a6eca6a9a6450597533d8654704759fb0d1e0d8b05cbd3a5d28ac494fc3ce2"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.44.1/volcano-linux-arm64"
      sha256 "c2370544624ce4f68fec6adcd764b50ce89e19dd65ad6b563365fbc75003b8bc"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.44.1/volcano-linux-amd64"
      sha256 "f9fe18100f51482d5bf92c39cc9d344139593487c710519256bd926463b698e1"
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
