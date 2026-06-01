class Keypak < Formula
  desc "KeyOpera CLI — create, validate, pack, and install keyboard sound packs"
  homepage "https://github.com/birangdev/homebrew-keypak"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.0/keypak-arm64.tar.gz"
      sha256 "361cbd5ccda2e51e53e4b289cca15d2484128784d8c651333d7ae1beab9340ad" # arm64
    end
    on_intel do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.0/keypak-x86_64.tar.gz"
      sha256 "6733d765e327919c30a46e31a755a350ecf257377162b5c3ba42358080f30ea8" # x86_64
    end
  end

  def install
    bin.install Dir["keypak-*"].first => "keypak"
  end

  test do
    assert_match "keypak", shell_output("#{bin}/keypak --version")
  end
end
