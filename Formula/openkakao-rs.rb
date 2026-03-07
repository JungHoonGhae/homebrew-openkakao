class OpenkakaoRs < Formula
  desc "KakaoTalk CLI client with REST API and LOCO protocol support"
  homepage "https://github.com/JungHoonGhae/openkakao"
  url "https://github.com/JungHoonGhae/openkakao/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "14e1e32113dcc3120899744dc1e59f88bd4babdf4bbb5341e961d97643728e49"
  license "MIT"

  depends_on "rust" => :build

  def install
    cd "openkakao-rs" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openkakao-rs --version")
    send_help = shell_output("#{bin}/openkakao-rs send --help")
    assert_match "--no-prefix", send_help
    assert_match "-y, --yes", send_help
  end
end
