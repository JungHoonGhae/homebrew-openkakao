class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.2.2/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "664bc752243cac0aeb7bc4bc593c7c4ae38c03ce6ade2810b93f97e0191e26db"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.2.2/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "44dab2e8fcef5d870b6e2fc1a80d2b206862053f81277677449f1b6fd67f2f49"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
