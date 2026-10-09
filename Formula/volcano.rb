class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.43.2"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.43.2/volcano-macos-arm64"
      sha256 "fd10ba44acd8ccafc3fb25e0ce8b7b492f1b9bb9011a84c509449cfe92164934"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.43.2/volcano-macos-amd64"
      sha256 "26815d75b73e7c9fc0ac571b0f66fc4143c397fdfd669d69d36057ccb9eebfe6"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.43.2/volcano-linux-arm64"
      sha256 "99a1526287a1428eb55cba53edd2de62c3b259d3cbe5060b693cb4ea19b49bf3"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.43.2/volcano-linux-amd64"
      sha256 "bc9017e480069bbb5ab16afecb4d0704c5d25d44f45dc0fc7aecac79d9084b8a"
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
