class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.5/mso-macos-arm64.tar.gz"
      sha256 "01cdc085c0792675f0f66a7cf862a544475a79ba4bc66033aa7846755fbb33cb"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.5/mso-macos-x86_64.tar.gz"
      sha256 "aae6a500f71b3b776f0e288807de916e3c0909f472368d34ceb5effd85963838"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.3.5", shell_output("#{bin}/mso --version")
  end
end
