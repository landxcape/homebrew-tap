class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.6.3"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.3/synkrophase-macos-aarch64.tar.gz"
      sha256 "ecc659e29ed180be662e23018760d918ce4bb89384206fef302066703adb887d"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.3/synkrophase-macos-x86_64.tar.gz"
      sha256 "81e6b5c1f5c9ec0a014f90a99c7fce5d53fa1afe1da31cf52fb81cf588f2176d"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.3/synkrophase-linux-x86_64.tar.gz"
      sha256 "e8479c84e665f0edd3fc406630b2bb546e52545a6a2a560c78d78c3c3aca532e"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.6.3", shell_output("#{bin}/synkro --version")
  end
end
