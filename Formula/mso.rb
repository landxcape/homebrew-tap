class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.4.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.3/mso-macos-arm64.tar.gz"
      sha256 "26cbd7dbc659917331bff56497ccbcec357f9941d619157abcc2eee392265d94"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.3/mso-macos-x86_64.tar.gz"
      sha256 "51e31161d2a72d326b14cd413a92ba0d977022b9a72e46dd7cd9dd3eab65b2f0"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.4.3", shell_output("#{bin}/mso --version")
  end
end
