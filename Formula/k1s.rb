class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.3/k1s-darwin-arm64"
      sha256 "59668e0e82d1eec20e491e7296228660723ba57558804bb9bd95aed12e8e46c4"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.3/k1s-darwin-amd64"
      sha256 "77b617810c706570249e95fd795e7db438083ed27599506d21d3f0622e7c306b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.3/k1s-linux-arm64"
      sha256 "3a1f34a9573a7c9137a1bfce7222bcf4667acd7edd76dfac8a7c177354196c27"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.3/k1s-linux-amd64"
      sha256 "ffe8b9d62ccdfdf5c9a66e19373b497dfd15586e016ee8d3397549d1b0c088da"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
