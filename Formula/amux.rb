class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.9"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.9/amux-v0.5.9-aarch64-apple-darwin.tar.gz"
      sha256 "419ab60592256e31cc87887408ed3cda0fc5a09006634fd26606d4cc0bee22a1"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.9/amux-v0.5.9-x86_64-apple-darwin.tar.gz"
      sha256 "aad61f36741c27e10a175ad5a2a1ae912a5fa035822550a398471e9803c9871a"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
