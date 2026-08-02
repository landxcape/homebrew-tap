class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.3.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.3/mso-macos-arm64.tar.gz"
      sha256 "7a9f6b8ed9c60866ca3b22af5087da6be6765cd67d57d1eb0140f276bdd5a9a1"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.3.3/mso-macos-x86_64.tar.gz"
      sha256 "681397708804a395df4005f7f0d8a8be21c283527493bb8ca66170358d9974d8"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.3.3", shell_output("#{bin}/mso --version")
  end
end
