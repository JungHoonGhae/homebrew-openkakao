class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.17.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "a93a4fa89a3a19543132a8ef773b4cd922f8210cf83bdbe25970f4ff13375d2a"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.17.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "a763555a774afef0ba1f29f2986fb179bf0a73ea9684edcb02c69fe390ed5ebb"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
