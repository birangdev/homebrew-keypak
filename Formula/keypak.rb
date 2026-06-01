class Keypak < Formula
  desc "KeyOpera CLI — create, validate, pack, and install keyboard sound packs"
  homepage "https://github.com/Arashk-A/homebrew-keypak"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Arashk-A/homebrew-keypak/releases/download/v1.0.0/keypak-arm64.tar.gz"
      sha256 "PLACEHOLDER" # arm64
    end
    on_intel do
      url "https://github.com/Arashk-A/homebrew-keypak/releases/download/v1.0.0/keypak-x86_64.tar.gz"
      sha256 "PLACEHOLDER" # x86_64
    end
  end

  def install
    bin.install Dir["keypak-*"].first => "keypak"
  end

  test do
    assert_match "keypak", shell_output("#{bin}/keypak --version")
  end
end
