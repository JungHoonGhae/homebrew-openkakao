class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.12.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "4274c12ba2062c668be90d6dce5fb20b79854b6d4d68411f8014745e497c35c3"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.12.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "6ce3783f5775b7f5ad56ee30262d0981dc6c1963c749547305ff89afa8ffc5ca"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
