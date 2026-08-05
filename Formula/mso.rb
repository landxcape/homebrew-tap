class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.4.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.4/mso-macos-arm64.tar.gz"
      sha256 "193568505f51c141af83a96f13753b08566b686f093d5e7707196adc2fab7805"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.4/mso-macos-x86_64.tar.gz"
      sha256 "1feb0c1244c86d753b50a9fdda1f3df8f4a69ec78535888c7ee87f663f91897a"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.4.4", shell_output("#{bin}/mso --version")
  end
end
