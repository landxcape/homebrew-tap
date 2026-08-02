class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.9"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.9/mso-macos-arm64.tar.gz"
      sha256 "7d183d368860a88338c4ad88347d0f19c1af947d65c6f0e3e043a4d94f621135"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.9/mso-macos-x86_64.tar.gz"
      sha256 "0b979827068587524f587fe36db25b9e802c570e81c3718bc4310905cbdbdd81"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.3.9", shell_output("#{bin}/mso --version")
  end
end
