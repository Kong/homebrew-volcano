class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.16.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.16.0/volcano-macos-arm64"
      sha256 "73f9637bb77b43184b99ca1ffc3d13bc6a6ded17acf903cfba6cf2b4b5c740a6"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.16.0/volcano-macos-amd64"
      sha256 "763c9a3e490e1db061a3adf48dab3e8539e2e0deb82be95e610ee16ece0df33e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.16.0/volcano-linux-arm64"
      sha256 "99eac92e583f6e190e0bcf6bc047c69c39d3d928f9ac416652134db19b2e7ec4"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.16.0/volcano-linux-amd64"
      sha256 "74c3786b792fb29597dd9b1a659080a17acb2e97cb81e36527967b98bb410564"
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
