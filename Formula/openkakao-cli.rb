class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.11.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "cb9621b785e882be549967b85d2e2999f60a2b471f0bd81da6171f2c7ee63a4a"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.11.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "866d47f532dc58e373afee75733f79863db6743390016e757727b5626ad4044d"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
