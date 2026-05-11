class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.2.1/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "56f72da4de1e34f57991c1703193f0a16dbff286cc4f6f0a44d9bd6ae56dcb93"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.2.1/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "e96f272f2d1e564a12aef2e6af29b1aeca2d45f62c36d747feeca6dc7b7bb7c6"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
