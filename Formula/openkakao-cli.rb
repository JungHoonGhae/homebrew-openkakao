class OpenkakaoCli < Formula
  desc "Unofficial KakaoTalk CLI for macOS"
  homepage "https://github.com/JungHoonGhae/openkakao-cli"
  version "1.19.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.19.4/openkakao-cli-aarch64-apple-darwin.tar.gz"
      sha256 "33c14b9ac59d3f3d8963dc01c96fe82345871ed6a6b942081fd1a2420b6e2675"
    else
      url "https://github.com/JungHoonGhae/openkakao-cli/releases/download/v1.19.4/openkakao-cli-x86_64-apple-darwin.tar.gz"
      sha256 "49bac2b3de6141fc77b681152a9bbbe6d09b88202ee1ad969d1f210eb4437d5f"
    end
  end

  def install
    bin.install "openkakao-cli"
  end

  test do
    assert_match "openkakao-cli", shell_output("#{bin}/openkakao-cli --help")
  end
end
