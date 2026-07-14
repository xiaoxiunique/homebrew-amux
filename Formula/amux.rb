class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.6"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.6/amux-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "f59d22ac38795223ceb742866a0cbcc12929ae8828bf854acb80857e21d97724"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.6/amux-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "9175fdd93ee589e2b4fe02bf1cc44b275bdf474c57a02d5614a9b18bbb2c59f8"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
