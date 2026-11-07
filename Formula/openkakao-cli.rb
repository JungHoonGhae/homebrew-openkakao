class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.13.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "aaeee08b81a34040134637018f055a8a801875a0fda1b05da75c28faa8229d44"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.13.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "e673520655520fb0b7fb9400723f6a0395b0dfcc30322876544360a8f0583059"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
