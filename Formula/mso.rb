class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.4.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.1/mso-macos-arm64.tar.gz"
      sha256 "aff089cb9dfc6a406ce537bd3dbcfce0940500e43d5632636f4c866fecb3e233"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.1/mso-macos-x86_64.tar.gz"
      sha256 "d1c721e6411c14ee2a034d1e07e646021f58cd95200817a88c18d6b52a238646"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.4.1", shell_output("#{bin}/mso --version")
  end
end
