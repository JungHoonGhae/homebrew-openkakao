class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/openkakao-rs-v0.1.3/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "7f0d4267e548916e849e17f35e29bfa1f7cd563ee8a90777798d21f06e97b366"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/openkakao-rs-v0.1.3/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "fc1af5dd6cbb0390c718d82895698c10d567a7fbcdf1369650d46a3debd8e887"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
