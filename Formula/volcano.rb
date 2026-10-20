class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.49.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.49.0/volcano-macos-arm64"
      sha256 "b214ef266ba5c431f82a83f1ff105e201c567b5bcf9a88e2eb98e0088f16164e"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.49.0/volcano-macos-amd64"
      sha256 "07783dbdff409e6e96268f8878359f1cb84e728926ca55f5edea7286baf7bc89"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.49.0/volcano-linux-arm64"
      sha256 "8558f443bc59be16a14a280b9957b874ddccc53470f375a0e4491315a14601cc"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.49.0/volcano-linux-amd64"
      sha256 "37d8a4310c114456d936937d0695772a227e713f9dc8cd2379a99164329f4b21"
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
