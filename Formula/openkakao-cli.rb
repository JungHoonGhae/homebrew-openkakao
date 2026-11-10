class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.19.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "3f01eddae69da7b9e764f15223378fc5667f6c1bbb31b9b190d200e45aa5f83e"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.19.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "d6c34232d82c54be1e12c146d2a5ebf69d91f7ed73a166f5fdc72835624d4863"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
