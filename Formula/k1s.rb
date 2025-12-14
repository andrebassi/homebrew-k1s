class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.2/k1s-darwin-arm64"
      sha256 "7052c52c7abfc1787da6cb4021256f48a9027084bd9f11ab651f751054818fd3"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.2/k1s-darwin-amd64"
      sha256 "9ffe903aab4fab56145d8971704f8d290b299a142af9e22b18bdb5bdb567b517"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.2/k1s-linux-arm64"
      sha256 "82a7aa0a38827d0101397e4c3ad4211166d409e07d517777b0e762aefc9d0e0b"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.2/k1s-linux-amd64"
      sha256 "bf9632774f38ad43b7d30d1ee3fc4ee8c20a35565c7130cd3010cb4b869669f9"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
