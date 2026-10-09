class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.1/synkrophase-macos-aarch64.tar.gz"
      sha256 "38c222ee18adde5b9b8e6100110a9b3aab849d476370cbf63dbe27d523431515"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.1/synkrophase-macos-x86_64.tar.gz"
      sha256 "37fde9ff3d5c16b995a5d64c7c5ca3a50cccad108fd1fa2dcfce50debe69ad07"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.1/synkrophase-linux-x86_64.tar.gz"
      sha256 "457285f0a2a40f7bdd95a2ac196d3e2acf68a639e9332d769cf21dd951709d0a"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/synkro --version")
  end
end
