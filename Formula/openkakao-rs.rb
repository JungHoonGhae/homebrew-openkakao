class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.1/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "bc837a7b7bd845d752d1228ed10979788d94320fa12c64e32cca065e82c18f46"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.1/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "9dd864fd9b6125c4719e0cdf7c837ac200f704a838e3e669c8b0a455fd9bc822"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
