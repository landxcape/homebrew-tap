class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.1/mso-macos-arm64.tar.gz"
      sha256 "beb064ec57a9f9cab6d1bb34e017ba91fce2a74d0c91a1621d17598dab70c96d"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.1/mso-macos-x86_64.tar.gz"
      sha256 "e2fe692456268679f37c989d28c480c38de16f854964b8b1c0ed8f0c8b6eebfe"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/mso --version")
  end
end
