class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.7/mso-macos-arm64.tar.gz"
      sha256 "e9e66953098560e00e571fc80326ff82ced982ebe9f7be262a468c4960c27c69"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.7/mso-macos-x86_64.tar.gz"
      sha256 "fefb0e1e9525e4f71302143328352b59d3978f5b8bc5eb59b783739049f32e26"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.3.7", shell_output("#{bin}/mso --version")
  end
end
