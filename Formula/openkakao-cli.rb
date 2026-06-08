class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.2.3/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "0ae74fc91a361ff77d55669a7b11ee4de77ab0411a8b646aca7b47c9459ee233"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.2.3/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "430a4a751ff3b99fc6b9a9631cbe99db2b2c2f8664f680c2e09a726152ac0ef8"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
