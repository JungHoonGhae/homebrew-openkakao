class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.3.3/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "3d0cc2d72a4d6d6945b455e5a9cbc18544fcf0d8a6095ced033e07d94d56eb18"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.3.3/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "115bc91c9c482a5f3c52866cc5f9f270256d82e1bd154173a693fb784ddbdf48"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
