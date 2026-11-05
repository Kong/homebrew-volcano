class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.71.0"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.71.0/volcano-macos-arm64"
      sha256 "01b4d655e2e0ffad24fe36eaa0886fe8039825f3c87e71ad6021b211a454be73"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.71.0/volcano-macos-amd64"
      sha256 "7d9ba7779483de83b3554b35f1d27122ef99c84fa06645006c06d9e78e2908cd"
    end
  end

  on_linux do
    on_arm do
      url "https://download.volcano.dev/builds/releases/download/v0.71.0/volcano-linux-arm64"
      sha256 "f3b9c7c1778d2d7f227516eb67df0af6c912733a4598920e09bf8d857ab51438"
    end

    on_intel do
      url "https://download.volcano.dev/builds/releases/download/v0.71.0/volcano-linux-amd64"
      sha256 "63d585f427de8d1e92c341e66e00a606a06713f80726bd5eac97bc891ab9c445"
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
