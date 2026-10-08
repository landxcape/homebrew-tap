class Synkrophase < Formula
  desc "High-precision external media controller synchronizer for local networks"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.0/synkrophase-macos-aarch64.tar.gz"
      sha256 "badd9ff216110719c38d06ba19dfdbc938e1652e9405db1dfbdc0676625ad3c3"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.0/synkrophase-macos-x86_64.tar.gz"
      sha256 "c4869b1406748d6f2cdec0a0a7aed5b1ef297d51196dc3c6c83ac169b730f760"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.0/synkrophase-linux-x86_64.tar.gz"
      sha256 "7e8ec0e65283761a0ac23bc13c9c3156e95797ed5ed8b9ac3790bfdf1ed320bb"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/synkro --version")
  end
end
