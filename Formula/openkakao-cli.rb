class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.7.1/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "cb981f104fe0d6f281cc3959119cd812ee128ee69eaf5e924da104171223bb0e"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.7.1/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "672fe6557d6f783d3115b8d52b6feea23ca1ff290469f043f71b60ce6d5641b5"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
