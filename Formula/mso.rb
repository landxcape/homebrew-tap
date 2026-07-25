class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.1.0/mso-macos-arm64.tar.gz"
      sha256 "1be1eba389e8df0c3aa98ea3f840e89f8e65eca52d2c84527105940a765b2255"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.1.0/mso-macos-x86_64.tar.gz"
      sha256 "b69a6e0bc7e95025c3b5ecf33d799f3de99249ba416c305777d7f56963a98138"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "mso", shell_output("#{bin}/mso --version")
  end
end
