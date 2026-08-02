class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.6/mso-macos-arm64.tar.gz"
      sha256 "7c9ec71a7e832d1cd6067818b173c68ca87261eea074f77d74e19300281b921f"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.6/mso-macos-x86_64.tar.gz"
      sha256 "748b7176b1fdc4e295d0d49242749f41154f2cd825493c2be9b2c96d5f0b619e"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.3.6", shell_output("#{bin}/mso --version")
  end
end
