class Volcano < Formula
  desc "CLI for Volcano's hosting platform"
  homepage "https://github.com/Kong/volcano-cli"
  version "0.19.2"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.2/volcano-macos-arm64"
      sha256 "f47f8de6c36313fc2de24d21f81912f2b851eeeb124c2f93b1d0ad3ccef39682"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.2/volcano-macos-amd64"
      sha256 "87bbda8a5dd06ee243ba905c6491105c3a67b075fc8b222f47558be6dabd0a4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.2/volcano-linux-arm64"
      sha256 "ba34030cd79e0fa98a46569ed7a5e85fb4d2047ada61511275d61c7e77e02bc8"
    end

    on_intel do
      url "https://github.com/Kong/volcano-cli/releases/download/v0.19.2/volcano-linux-amd64"
      sha256 "c8545fa7ac96fbd7465166632698dc8adf67824cf9413c0b4766eee216bcd018"
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
