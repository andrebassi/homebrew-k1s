class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.9/k1s-darwin-arm64"
      sha256 "ce917f027e7905072c1920a841585ca14b40c01ec480e6e4ad17162a54560a7e"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.9/k1s-darwin-amd64"
      sha256 "f33b53ab71096ac17bea3b76f99541f755572d217a719c122edc355c323be9f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.9/k1s-linux-arm64"
      sha256 "a91ae7eab404cbc628deed3b0219dabf2c73030ec085413bb28770cc6666721d"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.9/k1s-linux-amd64"
      sha256 "033f5e371bb1aeb0e51327c6a27b34b1d4d42a7121e402190ba44c314200c857"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
