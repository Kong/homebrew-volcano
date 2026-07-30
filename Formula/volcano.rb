class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.19.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.1/volcano-macos-arm64"
      sha256 "02b7569b1af7b2700bd7a35c3b85ca7549cb16ecf5d2b6ae002f9004b83d2f73"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.1/volcano-macos-amd64"
      sha256 "551acd97b37b8f50fcb8ef529c3ed769e7b2731ff634c3d907b42e6788fb3726"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.1/volcano-linux-arm64"
      sha256 "28341e72b37e1f312a748cb4f3a8f53dcf9d2ea6f9e110745b6b6501c2b1b45d"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.1/volcano-linux-amd64"
      sha256 "c53a8c1ff3fa7fcc6d45ce5251c679828c7f0d94a4958987ec7b0edf3f91d79d"
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
