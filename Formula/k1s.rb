class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.4/k1s-darwin-arm64"
      sha256 "2c5310a175c6edeaf58fd9f68a78e6b38f6d8dfda1ba55003d1f4b846a59af0c"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.4/k1s-darwin-amd64"
      sha256 "bb849f41e6a52737b07b3a5f50d078361b41f8072bb0fea27cddf4b1bec899c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.4/k1s-linux-arm64"
      sha256 "8e555e636ce1729eb2d6affaceb78f5c274285fb3ab43908d8d692da17a97da2"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.4/k1s-linux-amd64"
      sha256 "0aa8b0a6f86771d2d2f459708f6d04120a0271f14ccb43d91363b09438d0f121"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
