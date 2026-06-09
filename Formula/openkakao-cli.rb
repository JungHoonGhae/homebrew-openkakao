class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.3.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "789cae3c4a90233732597a1f276ab3e3db663940fb50065d94a23dc979958568"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.3.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "56ae6a6b93813e9bd0b3bd2fcfa133f04b19a92ff00b8ca6b169a3ae45356eb4"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
