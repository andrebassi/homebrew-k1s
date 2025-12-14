class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.5/k1s-darwin-arm64"
      sha256 "4e2f2100238efe5c0da5782bbf50d710acbbc7b0c3836b7a8fe1c21465f5dc0b"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.5/k1s-darwin-amd64"
      sha256 "6c288bfee40296daf3a2edd6c30198f394ea2fcfd801a08c0ba6c4ad7b9e3368"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.5/k1s-linux-arm64"
      sha256 "5029b23d82b880c91f51f211f6ba4157ca55b52f58a5b7304c89b253b98c5f14"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.5/k1s-linux-amd64"
      sha256 "c9dbd723a38519246cafc311f87c38c5af8afea5797f37a3bbe8da8a6cea605f"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
