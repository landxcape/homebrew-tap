class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.5.2"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.5.2/synkrophase-macos-aarch64.tar.gz"
      sha256 "a9cc3c57ab5ab0f44e7f0402372140054a9c13b8f4420858fab68c30b053ee51"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.5.2/synkrophase-macos-x86_64.tar.gz"
      sha256 "b54556a38d738023919c28d8d06f689de57fa7044c6388fe09271ad3ffc32ce8"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.5.2/synkrophase-linux-x86_64.tar.gz"
      sha256 "ee9a1bb7ff702574613d1639365b14ac55d5ae499f16c1311b4e54a003e344c1"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.5.2", shell_output("#{bin}/synkro --version")
  end
end
