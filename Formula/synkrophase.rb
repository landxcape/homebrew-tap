class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.3.5"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.5/synkrophase-macos-aarch64.tar.gz"
      sha256 "0319ee88a253bb2a8f55957423d524bedbb5d1c6ac05510a358be02692bfb6bf"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.5/synkrophase-macos-x86_64.tar.gz"
      sha256 "bb124f5c9783a9f39a427e068a471f507af175509ca609b64a68c47541bc7d9e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.5/synkrophase-linux-x86_64.tar.gz"
      sha256 "606f269b5c404e183677f64bd6d366c986dfd990cb8cead68fa01b36923b609f"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.3.5", shell_output("#{bin}/synkro --version")
  end
end
