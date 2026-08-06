class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.4.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.6/mso-macos-arm64.tar.gz"
      sha256 "1ea63f6114a694a5fa71752f02b5f08377fdbc88bc800bc7d25eae9f459990fa"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.6/mso-macos-x86_64.tar.gz"
      sha256 "ed4ead6730088f01e57930092ae220395b98798d22373603b7307588f3d0b242"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.4.6", shell_output("#{bin}/mso --version")
  end
end
