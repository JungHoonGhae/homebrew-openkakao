class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.7.0/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "3da2329d3894150de8085518a615f4d740d90d7b1a7aad456e5b8aa2e0d1ef51"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.7.0/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "1a394294362cef555f399384e6f83a7205a88b93fb359c8645ea18d3b4f3ae1c"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
