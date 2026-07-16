class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.12"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.12/amux-v0.5.12-aarch64-apple-darwin.tar.gz"
      sha256 "50207e82a96e87227d2765b5e1de5a8e0b37539c76fdf065b10f3815d981f55b"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.12/amux-v0.5.12-x86_64-apple-darwin.tar.gz"
      sha256 "38134e3e3b73df525f85f536cd803e73206bfe4ae360ac5a4963dd09584b8341"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
