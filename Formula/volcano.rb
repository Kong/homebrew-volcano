class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.34.3"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.3/volcano-macos-arm64"
      sha256 "8d7b0fba267ebf07f28c34506a952d8ba4a5ceb59219f0951e357340224400db"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.3/volcano-macos-amd64"
      sha256 "4e9b0f2b00518f48759a2daba873e2d7775566e40606b7cbcada6405a289d624"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.3/volcano-linux-arm64"
      sha256 "b340e1f6bf4cab49471caaf9c46f013bcbea3612c4395ee5445a7c8aeedf97e0"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.34.3/volcano-linux-amd64"
      sha256 "63ea3835f355f137c32eace284742b827a8a0fc3d6f560f16ff50b3fa9bec91e"
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
