class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.2/k1s-darwin-arm64"
      sha256 "afeaabbf2535623a7a8485728191d91764bbcd24e2458ad96b6e06ee65c9474f"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.2/k1s-darwin-amd64"
      sha256 "8ce4e85428a54f6d7f0704eb04f2ec292f7c1f68085aca8e06da70d247ba50e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.2/k1s-linux-arm64"
      sha256 "c72d5e00ded8b284c9eff0bcbe35137f849d9edf342275f2c0791e39e16ceabc"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.2/k1s-linux-amd64"
      sha256 "17d674cfe4fb92766e0edb103869fe9a97fee5d81c8d31ac6e845231c6dbb65b"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
