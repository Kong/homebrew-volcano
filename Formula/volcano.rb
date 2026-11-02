class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.60.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.60.0/volcano-macos-arm64"
      sha256 "4f33189249c61d22b278f809291002a829b91257c936f282a35e20116ac67cf5"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.60.0/volcano-macos-amd64"
      sha256 "870f04941fda6e0d676a3974c2a49f479da4a1df86ace130142c927c53d02c9a"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.60.0/volcano-linux-arm64"
      sha256 "1c7863d0af27f839fde3daf836681d2242bed028df8cacc9340e528b3282f6a7"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.60.0/volcano-linux-amd64"
      sha256 "028d209657880cf425bbafee5a26b36830ecf3060f22ccf3c426e1dcc254020f"
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
