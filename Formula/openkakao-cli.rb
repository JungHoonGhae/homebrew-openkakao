class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.3.2/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "c1969d035aeb8a51a0876162d8c8e40909f3640dbff60450390e8306478cd4de"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.3.2/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "8df809965c444b8b70f3bd2274282ab6ffd8b2fbd826a4857fe78c34af84b4d8"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
