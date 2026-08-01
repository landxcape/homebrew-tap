class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.2.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.2.2/mso-macos-arm64.tar.gz"
      sha256 "c54ca10966b0db7ad29039d08f9b2b00c0baaf6073f0919c1408ddd91a486329"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.2.2/mso-macos-x86_64.tar.gz"
      sha256 "33755422d707474e2a35abe55724fad60c97b2576308da54b0f3fba5e243c2f6"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/mso --version")
  end
end
