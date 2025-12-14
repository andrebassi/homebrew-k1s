class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.7/k1s-darwin-arm64"
      sha256 "6bcd2d12df8f4b45ea603a1a706f036ea237805631743be528643a966c430b4c"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.7/k1s-darwin-amd64"
      sha256 "9997ce1b58abe284a7003c6f6164a91d7668c2bfc260775589e055028be941a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.7/k1s-linux-arm64"
      sha256 "b9b77c251c8e17df62c02e926d0a3916aab92eb9a07d480175202e5dabfd67ae"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.7/k1s-linux-amd64"
      sha256 "4dcf884c866e1ca9239467da4a78e84e4d13d16717e5ba7700326984ece78fcb"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
