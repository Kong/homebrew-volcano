class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.44.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.44.0/volcano-macos-arm64"
      sha256 "07271408be27214455d072e4b00d86c62d0782b37f81611c1474a5e0caa70ea7"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.44.0/volcano-macos-amd64"
      sha256 "7e5f312a5c9b64dbc0b28d424f00ecfe9e2c0698e4d6f4b70e3f25d7f0ec0af9"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.44.0/volcano-linux-arm64"
      sha256 "3d9886d89a3553df03cbbd963f1d7548d1dd48da30f3ca0caf01d4ed3afc5edc"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.44.0/volcano-linux-amd64"
      sha256 "5208ac0c34d6a98a6f0a2b955412a5136058938edc058359df8ac81c470cbb5c"
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
