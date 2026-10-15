class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.3/synkrophase-macos-aarch64.tar.gz"
      sha256 "fa193a33aaf85bb27022235d6a26bd977156a1b16ee05fc1bb05c6e7c6179b39"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.3/synkrophase-macos-x86_64.tar.gz"
      sha256 "c1d66202dbf9ac1b72fe1bcd1ccfc45ca73daaf4649aec020539be4727e4dbe1"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.3/synkrophase-linux-x86_64.tar.gz"
      sha256 "8bb66dd199ceb2ab2c5f7e47053fa50b3ecf6227d6e3ec51ef77a00a3af0a5fc"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.7.3", shell_output("#{bin}/synkro --version")
  end
end
