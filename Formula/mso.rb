class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.4/mso-macos-arm64.tar.gz"
      sha256 "83e1b9d9fec0de4ec6c0e7bee1d82dd823195bc6e6e0cbd7c6e3e59839a8309c"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.4/mso-macos-x86_64.tar.gz"
      sha256 "b1a216be53f65148c130403fadb0ca73355281ee4ae56b702adca1ee14af0111"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.3.4", shell_output("#{bin}/mso --version")
  end
end
