class Keypak < Formula
  desc "KeyOpera CLI — create, validate, pack, and install keyboard sound packs"
  homepage "https://github.com/birangdev/homebrew-keypak"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.1/keypak-arm64.tar.gz"
      sha256 "c37d0a8e774cbc4317bdeb56d170e5b130b787c728e54efb0b59a55d91a6f3cb" # arm64
    end
    on_intel do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.1/keypak-x86_64.tar.gz"
      sha256 "c02ad5d2817892898e2edf8fad4b148d7d1a239f3cc755dd6ee93035a279c438" # x86_64
    end
  end

  def install
    bin.install Dir["keypak-*"].first => "keypak"
  end

  test do
    assert_match "keypak", shell_output("#{bin}/keypak --version")
  end
end
