class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.21.2"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.2/volcano-macos-arm64"
      sha256 "f53d3d76f7a3863f031239e8b5149796a5994424b8e1ded7ffc92be01b981f84"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.2/volcano-macos-amd64"
      sha256 "d1ea7bc180fe7dbd31ca35cc57a5b8619bb516c682ada6cc8704fc8f321e3ba7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.2/volcano-linux-arm64"
      sha256 "b5f4cd526ad32672f85671f5c30b731b27dbde0405256212624a9ada9bfe5656"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.21.2/volcano-linux-amd64"
      sha256 "e86a788a0acc0d7f72a4ccc4d4fdf68897e2942077894b7c47e34ac786086a24"
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
