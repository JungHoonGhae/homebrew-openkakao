class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.0/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "e40c2d4b184dfbb4cfc5e612f803f763124d4a571a385c98f5f6ff7a994286a1"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.0/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "27151d2300700e0441ec9dc6c08dcb8433e49f633f23d22def7ba63ea80e20e8"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
