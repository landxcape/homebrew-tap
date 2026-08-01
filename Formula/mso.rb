class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.2.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.2.0/mso-macos-arm64.tar.gz"
      sha256 "d284788e464a80141b20da267ffaa6e5b168ea531369f855cfe314559b82c2e2"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.2.0/mso-macos-x86_64.tar.gz"
      sha256 "6b0e55d5e25b7475aa796693b3fb088f6d01b2ace063389e46069f1fa6066f0a"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/mso --version")
  end
end
