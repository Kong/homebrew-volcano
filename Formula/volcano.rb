class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.46.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.46.0/volcano-macos-arm64"
      sha256 "3ce703a63709c3d10d4f8a1bdd896dafe30ed7a6d9a54fab599585698212b0ae"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.46.0/volcano-macos-amd64"
      sha256 "fd5aca71b2e9364f6e3e3c3b1c8c03db2693a32d67b727643d11b557a234201c"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.46.0/volcano-linux-arm64"
      sha256 "8150f6aa3a139d2c293db002896a5fa5d17e9eb031fa74a5a9e3eb2b0c409e5e"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.46.0/volcano-linux-amd64"
      sha256 "3b94d3f87f454e664f30f0fb87c95cd908747b0bc2e3799861db55ad7eb1284d"
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
