class Keypak < Formula
  desc "KeyOpera CLI — create, validate, pack, and install keyboard sound packs"
  homepage "https://github.com/Arashk-A/homebrew-keypak"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/Arashk-A/homebrew-keypak/releases/download/v0.1.2/keypak-arm64.tar.gz"
      sha256 "6536f620d526397ae280fab0f2ede2d21c1c326a515c70425411cf7f43b2cb60" # arm64
    end
    on_intel do
      url "https://github.com/Arashk-A/homebrew-keypak/releases/download/v0.1.2/keypak-x86_64.tar.gz"
      sha256 "8598bf324b3a9923a4218480cf0d69b4ffba13b957f794b5c3ba1d4269f97d27" # x86_64
    end
  end

  def install
    bin.install Dir["keypak-*"].first => "keypak"
  end

  test do
    assert_match "keypak", shell_output("#{bin}/keypak --version")
  end
end
