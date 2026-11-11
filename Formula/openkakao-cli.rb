class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.19.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.19.2/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "b97aa3c9aa8ed28a64ad77a6b97866b1a7a8d00882cffbbb0447ed28397a1c79"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.19.2/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "ad21ac5936dc4993a3d25494209026ec2b6737d7f6328436fd2b4af387d0016a"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
