class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.4.4/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "9a677e153efe74769b425e00fa6fe27aa40df1b1fcc8b0fabc0431314392c356"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.4.4/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "feaf2d65341e08750d84acb2ae28bfbf4e0ff0afefdfb5e2d626e4c21ea870ee"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
