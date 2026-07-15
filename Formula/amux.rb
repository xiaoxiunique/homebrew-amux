class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.8"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.8/amux-v0.5.8-aarch64-apple-darwin.tar.gz"
      sha256 "5a5c78129ae60ef7e8c07ab1ed27a024af4bb6c9e5cd2eb7015b14e211a2aef3"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.8/amux-v0.5.8-x86_64-apple-darwin.tar.gz"
      sha256 "83302776d570eccf5e2f01015fce7cf0f148d09f4b8df61535a4db899590b99f"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
