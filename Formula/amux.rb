class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.10"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.10/amux-v0.5.10-aarch64-apple-darwin.tar.gz"
      sha256 "edc11e10a68acb451b617cdec076a752a0bb702b390846990a94ac2b9070a565"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.10/amux-v0.5.10-x86_64-apple-darwin.tar.gz"
      sha256 "33b62409b5c92c36d7508026a14502456cb917a965f13cfc14e8b9e277f8c9dd"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
