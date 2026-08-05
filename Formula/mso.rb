class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.4.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.5/mso-macos-arm64.tar.gz"
      sha256 "c21b928ff934cbd6ccef5a72d55b1d5c99637cbb2aa41661698a95bed4d22ac4"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.5/mso-macos-x86_64.tar.gz"
      sha256 "223f817f09177109adf0404cd835eda3041d9a38a6d2e9c8ba79d94bee0f8383"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.4.5", shell_output("#{bin}/mso --version")
  end
end
