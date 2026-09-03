class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.8.1/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "3c10531fea533a4bf6d5486d98dbf87dc971ca37e950aa0da5acca4a9a0ace13"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.8.1/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "efb4a740553d314c7979ebc54e647ad1f5a4eeefcd3531b3f4379813ea5b1039"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
