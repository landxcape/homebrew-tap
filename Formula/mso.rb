class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.8"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.8/mso-macos-arm64.tar.gz"
      sha256 "8d707014ccba1665b5662ae1ba99b5537afd78f6edf6dd5bc7bcd1a9191f57bb"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.8/mso-macos-x86_64.tar.gz"
      sha256 "40ffe9b6e5e5fcb11c1a9367ed406275b50cfea8a45abdfa648a7499a81d1d75"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.3.8", shell_output("#{bin}/mso --version")
  end
end
