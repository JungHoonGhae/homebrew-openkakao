class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.15.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "5e626e80affbd89d9267c86db22c61119f30ab71fc5b705096aa1c36c35e65dd"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.15.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "97582178d043d4a4a0ffd77741068818ba7e278af0397f61127b3d78732c7351"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
