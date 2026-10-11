class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.8.3/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "c77d8fef62aed22b101e2bda20b923b484f37b52e09186785578503180907a1c"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.8.3/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "6513fcf7cc8c31a32546ebf8565982e38a3432c4a7d06d6e1442ac7a51b7138c"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
