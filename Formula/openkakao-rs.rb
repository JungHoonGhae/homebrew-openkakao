class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v1.1.1/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "9e0a7676c018c6e6cf3d16f6d3c566da21b81648a039b336be7e7cbc5d1021ee"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v1.1.1/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "1169bf6d27cdc37d6ba01c763d3449d662efbb649ed8af5d21b924137487ac0f"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
