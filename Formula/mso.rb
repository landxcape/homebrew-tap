class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.4.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.7/mso-macos-arm64.tar.gz"
      sha256 "34d9a0f374b972cf0bec3724e0ed28c4e5867fd209616abe955626dfd69d7167"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.7/mso-macos-x86_64.tar.gz"
      sha256 "27eb761aa817990acbcfc66da299416dfccf2f57d62f08aed4a06129dc4765ca"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.4.7", shell_output("#{bin}/mso --version")
  end
end
