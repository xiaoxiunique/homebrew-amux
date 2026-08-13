class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.17"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.17/amux-v0.5.17-aarch64-apple-darwin.tar.gz"
      sha256 "c97886da5430cf9b9d682133cbe2d6b6a4f831be08a6121ce2002a86e29ee772"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.17/amux-v0.5.17-x86_64-apple-darwin.tar.gz"
      sha256 "d5a52ca902deefaf4a2caf7423aceec83d139c43187c1c612ee26ea0c014eaf7"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
