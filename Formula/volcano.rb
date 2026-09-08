class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.24.2"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.2/volcano-macos-arm64"
      sha256 "f58fa7c93d8832306dd8c71aba1590302f3ee4a716cdaf9ecef812ae4a8cc9c6"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.2/volcano-macos-amd64"
      sha256 "f01dfbdc6e7341116e9a3a96990b308e29e57e1cc815d26a021fa732032a4d78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.2/volcano-linux-arm64"
      sha256 "530b34eeb45cdf651d3bdbd0c148cda8b63436971af6b3ccdf829b0fa0f1cb11"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.24.2/volcano-linux-amd64"
      sha256 "531806ed3bc6fc9f620013c8f15821516eef7816a07c14ccccc6d3db2a665eea"
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
