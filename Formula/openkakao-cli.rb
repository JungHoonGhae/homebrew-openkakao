class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.5.1/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "7c8490ed8c7453cac4ca5bf06b7bf0a30bc4639368e916612b22ba40ac8a8911"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.5.1/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "a13e2076b426995d6b5c5ae67c20b20630dacdeab8ee6fbdc14f1b8862427609"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
