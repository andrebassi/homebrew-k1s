class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.8/k1s-darwin-arm64"
      sha256 "8cb4c5f77a4c42209cd724e4eb6589088b0250b4aa363533707a5958f9390702"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.8/k1s-darwin-amd64"
      sha256 "66979e74dc49e13a1ba6457d525ebf5240036c277277a0525a474eeab98d1cd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.8/k1s-linux-arm64"
      sha256 "2fcedf9236dc92e363fecc31fc16ec0973fdf7369153af7bec7fcdbb2fb9568d"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.8/k1s-linux-amd64"
      sha256 "fdc58224619ac9e676964d8a9c053f950b6efc9dbec760cd44731b46b404ccf6"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
