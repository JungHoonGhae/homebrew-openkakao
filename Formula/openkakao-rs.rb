class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.4/openkakao-rs-aarch64-apple-darwin.tar.gz"
      sha256 "030ab28604fa283039940ea3ccb4a7ee8deda23050cdbb94d4b8c4cdf2a920aa"
    else
      url "https://github.com/JungHoonGhae/openkakao/releases/download/v0.9.4/openkakao-rs-x86_64-apple-darwin.tar.gz"
      sha256 "64c27bc206234e39652af45bdeaa778e14555a40a02743f1fffe270755b4e677"
    end
  end

  def install
    bin.install "openkakao-rs"
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
