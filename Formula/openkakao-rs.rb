class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v1.0.0/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "467b15dcc484d3143eb2d9218231fb67a5a8eb6fdf54ee3ff9e1b118e10dcc5f"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v1.0.0/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "105b49fcd03de9314abb998ac902d27e3aab139cd8399742978af4c37ff28fba"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
