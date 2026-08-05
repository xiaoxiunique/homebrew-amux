class Amux < Formula
  desc "Run AI coding agents in per-directory persistent rmux sessions"
  homepage "https://github.com/xiaoxiunique/amux"
  version "0.5.14"
  license "MIT"
  depends_on "rmux"

  on_macos do
    on_arm do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.14/amux-v0.5.14-aarch64-apple-darwin.tar.gz"
      sha256 "6bfc15132149cb098167e00aa91ee4ed7a6fb538c7a68619461b1e43a0d08360"
    end
    on_intel do
      url "https://github.com/xiaoxiunique/amux/releases/download/v0.5.14/amux-v0.5.14-x86_64-apple-darwin.tar.gz"
      sha256 "51c3871ca49277c6317c4febb3032b93d7a189d8b969e8980a632339c96110fb"
    end
  end

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --version")
  end
end
