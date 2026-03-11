class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.3/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "178b74353284650ea450e63b106fc1f068ee330e655b8e27d79a96a0ebaa7865"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.3/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "2df96b3f353948d67e8d4bd7893e5ed7383860a111c27f132d1bd64c4bc5042b"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
