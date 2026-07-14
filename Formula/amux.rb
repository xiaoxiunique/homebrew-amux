class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.7"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.7/amux-v0.5.7-aarch64-apple-darwin.tar.gz"
      sha256 "e39622aaf890d9a1cbf33444b7abdafadce7d7593758284598fc71451e9b3e4d"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.7/amux-v0.5.7-x86_64-apple-darwin.tar.gz"
      sha256 "f1277c030bc2434dd8970acf98648ee749523db018efb0b1c1e76daf162f5ef4"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
