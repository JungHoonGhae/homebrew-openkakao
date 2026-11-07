class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.16.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "465bacd1053574d863632d7fec339902a50fb1d2a35bc0ae6b28839fca9066bf"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.16.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "3d40634e456e74c667afcd8aef8a98062df038f69916a53ed72357aecb8fe90f"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
