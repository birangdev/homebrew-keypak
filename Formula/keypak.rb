class Keypak < Formula
  desc "KeyOpera CLI — create, validate, pack, and install keyboard sound packs"
  homepage "https://github.com/birangdev/homebrew-keypak"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.0/keypak-arm64.tar.gz"
      sha256 "25d48e06c515ce2ec1b34036778de6cf1e7c537ae0ad6adc621c529bc66e13a4" # arm64
    end
    on_intel do
      url "https://github.com/birangdev/homebrew-keypak/releases/download/v0.1.0/keypak-x86_64.tar.gz"
      sha256 "3a13b652c60c68e967ee5660d444d7a3d1bec6c138b01ecaad77556ee9c98c77" # x86_64
    end
  end

  def install
    bin.install Dir["keypak-*"].first => "keypak"
  end

  test do
    assert_match "keypak", shell_output("#{bin}/keypak --version")
  end
end
