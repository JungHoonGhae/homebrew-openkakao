class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/openkakao-rs-v0.4.3/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "ab5d3155425c142fc9e6022bec125ff622f3e048bbe6430383053eee6c8c94d7"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/openkakao-rs-v0.4.3/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "24a96dcd6a99bf50f17612e4f286fa6eabd148643af093aab4cfc6a683178287"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
