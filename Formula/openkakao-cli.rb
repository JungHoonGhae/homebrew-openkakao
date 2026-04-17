class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.2.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "daa1adad138b8efe887757564a6654e059f86e7edfcd6f39295988a86743d8bb"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.2.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "d041ddcc50ecbcc7461774972310692f8c20fd2edb8a1abf1183715a14ade1fe"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
