class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.76.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.76.0/volcano-macos-arm64"
      sha256 "8c48a4a18eb59c524566f18aaf1c06e14f2bb13e5b93e5f2f3b1887544360680"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.76.0/volcano-macos-amd64"
      sha256 "b9c821ef0f3fc3d3e59aef2b323cdd5edf59286f43e3265e7397934fbd50a805"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.76.0/volcano-linux-arm64"
      sha256 "996dbdef5d4ee587746c29f0a31317d55f4f31938831eee9db73e4b82e707161"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.76.0/volcano-linux-amd64"
      sha256 "3c3b456f34f80908e669e6a8808a3616daad50bf113dc389ff7df999ca9c9691"
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
