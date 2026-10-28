class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.53.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.53.0/volcano-macos-arm64"
      sha256 "1fdd14ece743565341cfd8e306c2a8dfc010e8c85bf5b90886db1dea5fa270b4"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.53.0/volcano-macos-amd64"
      sha256 "d419b25cf51fdab8518717a3eacc6dd79b498108fe90be46a01b4fe6a65b5902"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.53.0/volcano-linux-arm64"
      sha256 "9a573fa1b06fd6120dfa8080b60157348392de1b823a674c1e23303c44b819e0"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.53.0/volcano-linux-amd64"
      sha256 "dec4f8927552926b5a2bb5325c070eaed2b5d9a653c66db0ba13ff49b128c414"
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
