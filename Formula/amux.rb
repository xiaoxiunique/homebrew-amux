class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.13"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.13/amux-v0.5.13-aarch64-apple-darwin.tar.gz"
      sha256 "b551c8742c9ff710626df704d8a709e0ce429739965494ca586b08cbf2c97821"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.13/amux-v0.5.13-x86_64-apple-darwin.tar.gz"
      sha256 "b8a4ce6a58922f623d62e389be9786ead8db6be945e2418b1af27bbfeeea5906"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
