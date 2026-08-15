class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.20"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.20/amux-v0.5.20-aarch64-apple-darwin.tar.gz"
      sha256 "4f6756e0c64d2d912c03f9f188d73b47c9790a50b490872dd46d25b71d9898e1"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.20/amux-v0.5.20-x86_64-apple-darwin.tar.gz"
      sha256 "a57c6b2dbdf9c23038b5211b3a23a61bc4cef1f6062bd0d77f40a616afbe694c"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
