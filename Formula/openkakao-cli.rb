class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.9.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "5bfd561868e44566b5214aff64866e20784ce4e995b72988d42cb08e9f292254"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.9.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "18dc6f920effaefc1a4b965c38d7db7ca25d992a331104f15bf8e44e42032f0b"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
