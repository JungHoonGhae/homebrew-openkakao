class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.10.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "172be220848fb597885db3d5c57b1a4b16300054e98d1dcbdb354ccb0c1bf0e1"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.10.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "b69d48077a503d861b57d661ac45d6e5daebf0c5306246bdbc108d5fc1987796"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
