class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.22"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.22/amux-v0.5.22-aarch64-apple-darwin.tar.gz"
      sha256 "b1aa4575e91aea03df16b733ddd89572eb53da2a8234d4c1b32f8bfbaa348b55"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.22/amux-v0.5.22-x86_64-apple-darwin.tar.gz"
      sha256 "a5ba3858abec02bffca8d70ea11bff9af6b905fc34f3700cd49ea3dc63f30af3"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
