class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.55.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.55.0/volcano-macos-arm64"
      sha256 "8d920a167497c4a7a7445180567f4bdf3675d51abae42c0c772c46975c6ce364"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.55.0/volcano-macos-amd64"
      sha256 "1521536296e6c4413e3443b96ce1ac985b618ca595831a98ee1aec41baace4af"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.55.0/volcano-linux-arm64"
      sha256 "7e636331349a0ddb5e2d2ca5c129a79247d7307fe03ebdfbba36e42b9d8b3f71"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.55.0/volcano-linux-amd64"
      sha256 "4eaf07f2500cc551fc5414b9756dd7bfdddea1dec9227dd5f9bbd0569cef005b"
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
