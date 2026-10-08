class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.41.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.41.0/volcano-macos-arm64"
      sha256 "0b672989b45d17e8e65acd0a1e8b92a42185e586ee6d7616a9faa8e94955ce6a"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.41.0/volcano-macos-amd64"
      sha256 "48e260b8e13779e333e4f149a9ef005e079dc34bcadb57c386fa1a7908c3dad3"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.41.0/volcano-linux-arm64"
      sha256 "12e382b2080ef926d926ec5c20a9cd937e292de618d06f1b700a69e8c041b199"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.41.0/volcano-linux-amd64"
      sha256 "6d2f5eba6dbff64f06bbc8062a3b63f68f8fdcf0e251e131646b2d48a6b792b0"
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
