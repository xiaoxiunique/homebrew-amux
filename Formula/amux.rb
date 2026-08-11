class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.16"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.16/amux-v0.5.16-aarch64-apple-darwin.tar.gz"
      sha256 "0035e0be1cb0480bad7fedfc3b9caa6fc98cb013488b1de8766ba46aa9381025"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.16/amux-v0.5.16-x86_64-apple-darwin.tar.gz"
      sha256 "8e96ac4c250c2985a6e41126bf215f6305d97ea9911164478ff4999af9ef060b"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
