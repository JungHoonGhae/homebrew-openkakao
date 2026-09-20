class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.8.2/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "ff84afff779474cf228df48875f7201ffff024d61db8f03c0af64ac1e836789d"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.8.2/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "b7be76ec1385f7c328e04fe24823b20c085c73043670dd328dd7926ee448aff9"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
