class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.4.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.0/mso-macos-arm64.tar.gz"
      sha256 "1c05d6d566ef16b0a8b6944454cfc016ed08ff233789a0da2de52de0d354d4a2"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.0/mso-macos-x86_64.tar.gz"
      sha256 "60d8243e535a58518b9e7455206fdb8405ade9fb693e4f67b2a25b3421ad0a05"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/mso --version")
  end
end
