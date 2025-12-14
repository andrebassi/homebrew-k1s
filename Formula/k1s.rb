class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.0/k1s-darwin-arm64"
      sha256 ""
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.0/k1s-darwin-amd64"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.0/k1s-linux-arm64"
      sha256 ""
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.0/k1s-linux-amd64"
      sha256 ""
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
