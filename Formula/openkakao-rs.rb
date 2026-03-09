class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/openkakao-rs-v0.6.0/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "3d9f66707e3dfd9a990bd7eabebd22e8677e002b9c0b32b4b692d7d7f5d022ab"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/openkakao-rs-v0.6.0/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "6d73871167de2982b30667379f88cde55d8242533bcc6b134d9b85b6b7a8c1b8"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
