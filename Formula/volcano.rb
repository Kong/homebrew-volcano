class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.43.3"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.43.3/volcano-macos-arm64"
      sha256 "d9464e1ac5d7a491baea6088f5e1fc2643c28e90ad75a1e5f45ea387ddbfd640"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.43.3/volcano-macos-amd64"
      sha256 "435aa04c05e360c5dd290322bf29802227dd997ad3381de452d6a71f96efe5e0"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.43.3/volcano-linux-arm64"
      sha256 "a16193285d3ebdcac1a53e3e4d3b0ad6c1d5099281aead60b8b9c59b9123fdfa"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.43.3/volcano-linux-amd64"
      sha256 "3489a8d0419cba4ca91b143b6799c21891f825f0088350dfb53ba0053d9eadb9"
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
