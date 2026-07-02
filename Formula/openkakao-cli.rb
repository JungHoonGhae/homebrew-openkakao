class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.6.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "46f2326fdb8c97023758d8b444f2a0e93b37ea73d09612bb1d23ccd7c778c69c"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.6.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "9f9e195d52bcedcb9c12a3f15db624599808a4c9b55726d246358042c148e89e"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
