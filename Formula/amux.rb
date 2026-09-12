class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.24"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.24/amux-v0.5.24-aarch64-apple-darwin.tar.gz"
      sha256 "14ca483690b878cf4d6270d3ae2785d12a94132941a73b75c2c938cc93b78e4e"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.24/amux-v0.5.24-x86_64-apple-darwin.tar.gz"
      sha256 "7a74d4f0d56024dbf0d4ead8fb6bbe5fc6afd3bcf06c901604b5c83d7cc1447e"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
