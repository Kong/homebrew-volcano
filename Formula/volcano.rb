class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.22.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.22.0/volcano-macos-arm64"
      sha256 "d5a1ec89aade41cd98f7ff5fc45d20e06ccd6249d5ebca7e0bc8945546542a54"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.22.0/volcano-macos-amd64"
      sha256 "c1827cf8f2fc789dfdea469680515468a2f080e84bcaa4def829b44bef7c4d7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.22.0/volcano-linux-arm64"
      sha256 "c05a21a6a0b9612cdd6532dc9d5aa78c3abd415f36013a350b825deae2a81bb9"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.22.0/volcano-linux-amd64"
      sha256 "474129b033ca937a0c4deb7623aa9c7b142e3ac3813f9e1a19c639f7db3793b6"
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
