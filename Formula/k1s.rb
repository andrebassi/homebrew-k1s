class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.10/k1s-darwin-arm64"
      sha256 "d156a2d5af26c3b95670af6866aee71caa948ce96c3ca4f276ebb06c773d4983"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.10/k1s-darwin-amd64"
      sha256 "cf1262dbab85848368dbdcd22cb0ab9d8ff3eecef5e32c05792539f024b9c72a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.10/k1s-linux-arm64"
      sha256 "fec30f0e38a40270216127ca6ca094bcf0e784980aa5ead8f289ba8a186f12ec"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.10/k1s-linux-amd64"
      sha256 "9e2c8fb1ca9c907e63da7a5661bd97d688c8f1dccd940b076a655da12077d83c"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
