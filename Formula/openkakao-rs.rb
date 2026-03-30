class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v1.1.0/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "6a3216a6523567483bf34e4de56fa135e16b0fd1fb6f77b67e82f8977ed2f8df"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v1.1.0/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "a19166d2319d5389697f621930c63df85b22f1a6699c8a112fd42f01b632c5cd"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
