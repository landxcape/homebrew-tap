class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.2.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.2.1/mso-macos-arm64.tar.gz"
      sha256 "9827dcaa891b489c6b96aec7600edd0d67e55d211eafea41e3ca4d4e5e564a95"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.2.1/mso-macos-x86_64.tar.gz"
      sha256 "bc2d3052e2b9e2a2cc54231a421d66f712c643e63709f5c6013c97815773a615"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/mso --version")
  end
end
