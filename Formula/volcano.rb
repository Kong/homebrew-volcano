class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.20.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.20.0/volcano-macos-arm64"
      sha256 "062546515dc5d4d6b631ed82bec4e1a1c58ce207a6bfbfe5865468e24b39a7f4"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.20.0/volcano-macos-amd64"
      sha256 "857ada051a809d20de4845c031c1c320d113601b833f68e6f2ffd122267c683f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.20.0/volcano-linux-arm64"
      sha256 "6987291777179af551c99d48a3dd154d8b3bf0c3138ca47b7cc9e9f733e9f9c9"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.20.0/volcano-linux-amd64"
      sha256 "874b94e4bb55c747c9f0d58841f2084409480b133245e508194f5c391057082a"
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
