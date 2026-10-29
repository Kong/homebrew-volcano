class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.57.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.57.0/volcano-macos-arm64"
      sha256 "7e4c6a7c2c85212d0f3af69df82667ced75fee4336257470c50fac248a243a47"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.57.0/volcano-macos-amd64"
      sha256 "a895d99d77cdcdb83e4191ccc63e2e26241edbb8db3f63ca4d11f293493b0268"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.57.0/volcano-linux-arm64"
      sha256 "97434e636751f2a8a5c3b49ac3970817a985118bf8dd4201ffa348b986871267"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.57.0/volcano-linux-amd64"
      sha256 "0e0263179d186c734998751fb2957951083cb9e3ace70b4bef60d1505ed0d935"
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
