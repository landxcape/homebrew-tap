class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.2/mso-macos-arm64.tar.gz"
      sha256 "dfa3b3f179eaaf2681dacfb6eefb7e9802509b88befb42aeff459130f7fb2f78"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.2/mso-macos-x86_64.tar.gz"
      sha256 "c72ab53a305c2a27ef8bd74d13a5c5c5b7109fd2e8455444daf7b78495b3431f"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.3.2", shell_output("#{bin}/mso --version")
  end
end
