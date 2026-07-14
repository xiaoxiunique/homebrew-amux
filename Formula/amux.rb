class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.5"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.5/amux-v0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "8088083432c2d6220d85ebfd5e26ad02811ce25fb212023468fe2e1cb5b36416"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.5/amux-v0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "15d29740e137714be32526a0d42d0ab096a4d1be506cbc6b8e573325529eaed9"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
