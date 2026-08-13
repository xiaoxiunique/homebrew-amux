class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.18"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.18/amux-v0.5.18-aarch64-apple-darwin.tar.gz"
      sha256 "5026606cff0d5ceb7b3a2c8efb2af0da3ed1697bd783c17ce8ed8e676fbc1385"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.18/amux-v0.5.18-x86_64-apple-darwin.tar.gz"
      sha256 "4b3c2ffc021b65c33a7f6c52af66ed73d318d77b69aec991c38b07a18703ed41"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
