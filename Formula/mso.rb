class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.1/mso-macos-arm64.tar.gz"
      sha256 "5126301083e5a73a73f4931d888a7bde7f3e94b6817557549d7baf4ad53c2327"
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
