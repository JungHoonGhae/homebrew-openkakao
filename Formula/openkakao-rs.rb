class OpenkakaoRs < Formula
  desc "KakaoTalk CLI client with REST API and LOCO protocol support"
  homepage "https://github.com/JungHoonGhae/openkakao"
  url "https://github.com/JungHoonGhae/openkakao/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "1870566ad112b9e5f3b5277ecdaf0e186e179a563ec00c3d2b699a579216a3b7"
  license "MIT"

  depends_on "rust" => :build

  def install
    cd "openkakao-rs" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert_match "openkakao-rs", shell_output("#{bin}/openkakao-rs --help")
  end
end
