class Keypak < Formula
  desc "KeyOpera CLI — create, validate, pack, and install keyboard sound packs"
  homepage "https://github.com/birangdev/homebrew-keypak"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.2/keypak-arm64.tar.gz"
      sha256 "3e80545849a1a6771d834d2d626b3b31268935e4a5daf9bdeb35ceaf9d328e7d" # arm64
    end
    on_intel do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.2/keypak-x86_64.tar.gz"
      sha256 "61e4915edcd1374b5a47124f7a6bf399c60195f5770deeed63591452571c162d" # x86_64
    end
  end

  def install
    bin.install Dir["keypak-*"].first => "keypak"
  end

  test do
    assert_match "keypak", shell_output("#{bin}/keypak --version")
  end
end
