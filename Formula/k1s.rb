class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.6/k1s-darwin-arm64"
      sha256 "84006d6a4bc2265fc97a246677884c94d708e25021b6a3e2349b03477425be3d"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.6/k1s-darwin-amd64"
      sha256 "2339bf34bfa5caa0e5634cbab5590e6b9714c6f16b54dcd015394a4ba03d4fad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.6/k1s-linux-arm64"
      sha256 "8289993469855785de5b9a060c5afb2690fb5adccb0ca023c8761af28166a218"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.6/k1s-linux-amd64"
      sha256 "3b0f72872402407f8bcc285f01e607fea7a9a6e760b95f4da1c2491c4f36a9e4"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
