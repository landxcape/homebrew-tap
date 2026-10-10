class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.4.0/synkrophase-macos-aarch64.tar.gz"
      sha256 "7953196eb0fd5cc52a5dc932b1b31437cdce0f75a45928eab0ba87393274ccf8"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.4.0/synkrophase-macos-x86_64.tar.gz"
      sha256 "2f0f50b920ceba1b1a14ae5364ff4ab8cb4e78dcae466a573894fa4a8381de73"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.4.0/synkrophase-linux-x86_64.tar.gz"
      sha256 "1b145e8d60afc8f4631683d06e9f7f5baf725cacde697b6511247a2cc59ffb0c"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/synkro --version")
  end
end
