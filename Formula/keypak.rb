class Keypak < Formula
  desc "KeyOpera CLI — create, validate, pack, and install keyboard sound packs"
  homepage "https://github.com/Arashk-A/homebrew-keypak"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/Arashk-A/homebrew-keypak/releases/download/v0.1.1/keypak-arm64.tar.gz"
      sha256 "bb13320ef8be02c5b8e8e9768011ed04b24d503529388609573150860c853858" # arm64
    end
    on_intel do
      url "https://github.com/Arashk-A/homebrew-keypak/releases/download/v0.1.1/keypak-x86_64.tar.gz"
      sha256 "e5a8050b98ebb51a74735feedd443ad3eaadb0afe0885cfde2fefba17bfde580" # x86_64
    end
  end

  def install
    bin.install Dir["keypak-*"].first => "keypak"
  end

  test do
    assert_match "keypak", shell_output("#{bin}/keypak --version")
  end
end
