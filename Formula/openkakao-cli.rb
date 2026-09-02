class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.8.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "ba3ad38b54347aa17d94e9f38a61059883d6ec8895a3817e9ca1c32c24be430e"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.8.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "b09b1db44125ea1a362e576e93608b2a300b7d1ffd1d0c8e871b0813d5930590"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
