class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.21"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.21/amux-v0.5.21-aarch64-apple-darwin.tar.gz"
      sha256 "335d3d817996210244d7e15d6552f4499fdb9f49f5c5d77b7982018c4ba91a35"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.21/amux-v0.5.21-x86_64-apple-darwin.tar.gz"
      sha256 "026a672ae399bc1bf1df3a1aaf1d653c5910b5e6da0895a751d6e1904a4099cf"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
