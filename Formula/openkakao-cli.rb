class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.14.1/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "469c7bad9bfa32f63050b3abe3e1e571169c67ea793aa026400dcbaadd6a8a4d"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.14.1/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "27b919eab588d651e85f870b9d65e3a76951e04e87d588910f2594222bdea113"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
