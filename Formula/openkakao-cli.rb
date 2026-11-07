class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.18.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "326556d1b485fe8f091b739c183b7f8f0558a2ab6fcbad3ec824e84ba826682c"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.18.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "81aa18da7de0cfc2cd440a55debd6552f164999490bae8f338bf3686a9cb9864"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
