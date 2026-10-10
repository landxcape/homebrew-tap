class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.3.5"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.5/synkrophase-macos-aarch64.tar.gz"
      sha256 "eedaca984668ff883bc0022c0be914ff6e5ee7435036ac34df294997d3116111"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.5/synkrophase-macos-x86_64.tar.gz"
      sha256 "7952ef256b4d497200944ed10b8538784461ed928cf79d5aa37db337c719d7eb"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.5/synkrophase-linux-x86_64.tar.gz"
      sha256 "6252a4e0d8f52c1bf03bb0ca667257c811e1ecdc2d2ef9bf1025bc8a7b67236d"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.3.5", shell_output("#{bin}/synkro --version")
  end
end
