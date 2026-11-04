class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.64.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.64.0/volcano-macos-arm64"
      sha256 "463f206e3e544e15886ea657dffbafe38aa7ccddbae73b8b324f60adc777dd2e"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.64.0/volcano-macos-amd64"
      sha256 "49dd2ca956ee55093eabb63e4fecb383ffc7e894822579e2e5449788ff3ab5af"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.64.0/volcano-linux-arm64"
      sha256 "25695ab378ec8eb2b49fcc8fb38656b7eb36cad91e0859d17371145aead41eb5"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.64.0/volcano-linux-amd64"
      sha256 "6eefecd545784276f4c5eb323ae521fdaff8e37ef4f7961b595fa87fa9936816"
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
