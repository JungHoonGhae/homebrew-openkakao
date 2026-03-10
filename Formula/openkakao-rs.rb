class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.2/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "9f632bd6a122cfd9d89fd01f6de1a648ca0fdd5e8d9e9a952aff07e3532f192f"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.2/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "71c8dd31e5bc626ba012510d13f0eb21b6da30ec46f0db0b6a17611a7f538e78"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
