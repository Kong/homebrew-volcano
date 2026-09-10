class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.28.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.28.0/volcano-macos-arm64"
      sha256 "1addb6dd8ac0fa9fa74fad4ad8bf40cbee52135d0e2f2efcb10c826cbc405ac1"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.28.0/volcano-macos-amd64"
      sha256 "271e3cf18bfa0627d7dc00c83252508306fec974b7f105ab4d7c2e320100f6f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.28.0/volcano-linux-arm64"
      sha256 "2976940c33b8685d82ed9946feafff1d119744753779152fbc8c04eae185c1e4"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.28.0/volcano-linux-amd64"
      sha256 "60eccb5bc2495382240cfabafad8d7e85f80387b2f2996b522b545db93ffce4f"
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
