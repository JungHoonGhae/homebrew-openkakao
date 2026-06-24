class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.3.1/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "57e228b89b55459b8e210691054e2552d0a8da3fdf0696a435ba6aece61ffc6f"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.3.1/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "63f0d48f6e1eb1ccea872a4230d2f6907e0f1226741aaea5df9544ad63383893"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
