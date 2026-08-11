class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.15"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.15/amux-v0.5.15-aarch64-apple-darwin.tar.gz"
      sha256 "c422c10830827703bf361484424cdc29d6e273c25ce04350536015a087a70c04"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.15/amux-v0.5.15-x86_64-apple-darwin.tar.gz"
      sha256 "223a61a2bf0998028c72e62ebb0ca430a8a82fb7c45b04b1631a7c397b90d333"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
