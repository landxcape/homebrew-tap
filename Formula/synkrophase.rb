class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.0/synkrophase-macos-aarch64.tar.gz"
      sha256 "6c6a77c4b45461d5136768bcfd952d98a3081ec94ebdf2d5f3826472421f3496"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.0/synkrophase-macos-x86_64.tar.gz"
      sha256 "8acd073060bd5754288efce24fc7b67165a95334b8d038bc3289fe72ac26165c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.0/synkrophase-linux-x86_64.tar.gz"
      sha256 "95bc7df8dfa0950b8c07557cb889f86c1b8fa30ebfe87ea512f4c32b42290c4c"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/synkro --version")
  end
end
