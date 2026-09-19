class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.32.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.32.0/volcano-macos-arm64"
      sha256 "92495481df5637e87551eee5c0f81b2dd5e88a9eeeb6a14c2b6bf3d7bda8d2a0"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.32.0/volcano-macos-amd64"
      sha256 "dc70db29e35c4f7026e8b468128e27b04657492a1555385011350cd035a8b77f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.32.0/volcano-linux-arm64"
      sha256 "1086f02d58a0e1f40a183ddbb3c012b3b76780c7643ba6d99883cdb8e7fc5ee3"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.32.0/volcano-linux-amd64"
      sha256 "c08fe7f65dec038d0afe5af879093a65c5b636cdfad8d5786792e5782616be8e"
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
