class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.73.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.73.0/volcano-macos-arm64"
      sha256 "c8892f57d6a7b54ea26d2a885dd238f399cff3e4f6cbd917a90881dd04c8c05d"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.73.0/volcano-macos-amd64"
      sha256 "a6addc9b88f58fd42b98e7946cf1a7d1e5795c4c753d43b8c55ba3111c05cd6b"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.73.0/volcano-linux-arm64"
      sha256 "9919d70e136d1f1f5eda340a4fb905ce662eefeda43b3b8bab6561c0f54257bd"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.73.0/volcano-linux-amd64"
      sha256 "ab66aab3e9cc76c2ca8ca4cfccf78f18d175e0bc71b154eee7002d2d504b6eb7"
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
