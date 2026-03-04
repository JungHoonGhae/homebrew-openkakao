class OpenkakaoRs < Formula
  desc "Rust rewrite of OpenKakao CLI"
  homepage "https://github.com/JungHoonGhae/openkakao"
  url "https://github.com/JungHoonGhae/openkakao/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ef24160f2ae60498a01ed138fcb8535f22203fa82486b9186d75e2fdf9e8853b"
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
