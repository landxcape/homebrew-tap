class Synkrophase < Formula
  desc "High-precision external media controller synchronizer for local networks"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.2.1/synkrophase-macos-aarch64.tar.gz"
      sha256 "91fa0ee1dd928adc48793fc8ba1bcdc580641f4ccc04e7fcf759597ed97e2756"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.2.1/synkrophase-macos-x86_64.tar.gz"
      sha256 "15ca0c4951e0b6582acb2a46bd29528587a954a7f85b56f413c01b70d8653e42"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.2.1/synkrophase-linux-x86_64.tar.gz"
      sha256 "a4cf54f12bbf771d89e9b88225a5843b37259e09348a5499f5a39eb262ea0092"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/synkro --version")
  end
end
