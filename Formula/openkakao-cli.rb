class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.19.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.19.3/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "e3b0fd882008ddbb4e2021a124f27638e8c7778415d95879f5e6579886d772b1"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.19.3/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "e22e43ba90f7f605b9a3e0c90f1830e7d392974f0f82fc92bb1419de3fe2834c"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
