class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.11/k1s-darwin-arm64"
      sha256 "3919cdf8f9e2348735bb12564038c717729dbd21d8c44cce79f549c988d1bf28"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.11/k1s-darwin-amd64"
      sha256 "a6d4efadb3d3fd0864db275a5a23f45a836cf7c3e847f0003699e1c7548163cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.11/k1s-linux-arm64"
      sha256 "18d455598b7340d2fd4293af1b939269787ba76ab72882e546b2a09afc60cd68"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.11/k1s-linux-amd64"
      sha256 "ccd30e2a376071a215284cc1dbee80266e1005b9717c951fed9365d5ebe934a9"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
