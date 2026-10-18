class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.1/synkrophase-macos-aarch64.tar.gz"
      sha256 "744fcfa13f228566016c5e39ee389097c6b5b74643ca5de58a33854d19cfdeaf"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.1/synkrophase-macos-x86_64.tar.gz"
      sha256 "25cd7270704041e3190ab8c567c9016bf7ea46ae7abe918a5f60f3a8a081147d"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.1/synkrophase-linux-x86_64.tar.gz"
      sha256 "fc422fda9fec698653d499bfdc1b4652b1f09bc5a3147ccc6a75971afb821b71"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.8.1", shell_output("#{bin}/synkro --version")
  end
end
