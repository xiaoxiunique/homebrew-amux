class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.11"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.11/amux-v0.5.11-aarch64-apple-darwin.tar.gz"
      sha256 "09c8c3c9754b2e6f3bad8cac5a9ebedc50fa2cee5e04dd0fd625a055ede9d60b"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.11/amux-v0.5.11-x86_64-apple-darwin.tar.gz"
      sha256 "12703a40e7c842a24b3e1eb0fb1c260fdb284c6c0338170801da094a9d498d26"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
