class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.29.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.29.0/volcano-macos-arm64"
      sha256 "58bbdf26d0f04c3284c89bc4cd3c4ca2bf47839ec115de0c739c04d6aa37cddb"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.29.0/volcano-macos-amd64"
      sha256 "b16ce775047d42d572add8c633e6db78f1c16dbd88e69e8f4c6563340578fa08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.29.0/volcano-linux-arm64"
      sha256 "6e2703c6972ada304eb747a0250e26c227ade27782e0c1f00b10bed35f495a54"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.29.0/volcano-linux-amd64"
      sha256 "2c0cb6a97654502fd560c7cbcc4db4084139d45786caa1f5d55429542539a884"
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
