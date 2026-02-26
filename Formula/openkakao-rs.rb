class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/openkakao-rs-v0.1.2/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "95181d373f85c7b2376f6f50858daf4f2d0982b7ffeb3834e884614f9f52e756"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/openkakao-rs-v0.1.2/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "ae95146ac1eb30c76da653127b465140e9c8138f0b7faabd5a1ada6afb28f178"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
