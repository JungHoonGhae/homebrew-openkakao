class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.14.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "eb7cc98b43fd9799f7aa2f50ede443f316739ca3d0c7f23eb7c885bb1ef485de"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.14.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "b5f14207142c501dc69d974f4076be52ea207d23b11bc466eaa8d27d264dd4c5"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
