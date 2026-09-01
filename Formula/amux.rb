class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.23"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.23/amux-v0.5.23-aarch64-apple-darwin.tar.gz"
      sha256 "7175077e7eb18a9c1b67e53931c5dfd6120689332c9c9bdd9757bc44c0be38cc"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.23/amux-v0.5.23-x86_64-apple-darwin.tar.gz"
      sha256 "b0b74df4efd53a0da5d36436ab2534e6e2fe449086eade85f54c6d2f79120fde"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
