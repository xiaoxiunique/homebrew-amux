class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.19"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.19/amux-v0.5.19-aarch64-apple-darwin.tar.gz"
      sha256 "37143885e0083251d001703db3f22ee97ea8289ebc57333e293afd960b65a51e"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.19/amux-v0.5.19-x86_64-apple-darwin.tar.gz"
      sha256 "b7d89ec7f448ef9186a131a0a4e7fb84a5e87ec6ea94f581add723ecfb7ea6b4"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
