class K1s < Formula
  desc "Kubernetes TUI Debugger - One screen to see why your pod is broken"
  homepage "https://github.com/andrebassi/k1s"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.1/k1s-darwin-arm64"
      sha256 "db909202903c4d55f530773480b4ed2b0cba396cecea96a80bde2613b321a998"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.1/k1s-darwin-amd64"
      sha256 "bb8e03e41154a780a892d98c904a74a02bc5eeee796f39f4989ada61efb66ef4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.1/k1s-linux-arm64"
      sha256 "e638eb90ddcc6a7f5b9ee48594a93a5452b1cc897314519f8c6b56515a7a8cad"
    else
      url "https://github.com/andrebassi/k1s/releases/download/v0.1.1/k1s-linux-amd64"
      sha256 "4d16526f6044db12f47bdd467cfa4a29f5b6f8d3674f3e46ffb2f1428c1329df"
    end
  end

  def install
    bin.install Dir["k1s*"].first => "k1s"
  end

  test do
    assert_match "k1s version", shell_output("#{bin}/k1s --version")
  end
end
