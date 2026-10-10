class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.6.5"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.5/synkrophase-macos-aarch64.tar.gz"
      sha256 "fc303e77534e2266b5ed89862e4092bf2ae30429c1fa4db0834e57065067ad34"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.5/synkrophase-macos-x86_64.tar.gz"
      sha256 "ce078fc7f997c10c53e11b2f5407b81ddbb199e659e4d9131231d796e14d7bbb"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.5/synkrophase-linux-x86_64.tar.gz"
      sha256 "c6ec0d39f460e2e4dd62029d0fd40c675281f4b66d8f286b92b1fe36aadddc6b"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.6.5", shell_output("#{bin}/synkro --version")
  end
end
