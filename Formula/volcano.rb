class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.84.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.84.0/volcano-macos-arm64"
      sha256 "d7999f67a916d7bd0c5cc4ba32b0a2498d255b101d22da7d39898e4a8be759e0"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.84.0/volcano-macos-amd64"
      sha256 "f7f541502b392fcbc9cdc945ffa9403c959da54126deb51b197194b095231d96"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.84.0/volcano-linux-arm64"
      sha256 "c6b508390521289bb3afe80e305de019d5803a7123caa6faff8c912df1f54e94"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.84.0/volcano-linux-amd64"
      sha256 "00a51e8f02401ab7b84a2aef7370cd60777dc0acd9ee8979bac2b4bda7500b43"
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
