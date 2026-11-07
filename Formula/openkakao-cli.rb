class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.15.1/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "e21a4d0c9ad1ac9e553c1808402abae430f360079374dcbe5f1743b6a1b9e9fc"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.15.1/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "83ed3d6633b805c7d38f08a0e57e3299611569a162a978845746929690636943"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
