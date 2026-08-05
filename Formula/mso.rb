class Mso < Formula
  desc "Safely offload bloated macOS developer caches to an external APFS SSD"
  homepage "https://github.com/landxcape/mac-sym-offload"
  version "0.4.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.2/mso-macos-arm64.tar.gz"
      sha256 "314bbb47105c789c4fd7eb9e7fe265bfa10bb648e305a2a342f809ecd164678a"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/mac-sym-offload/releases/download/v0.4.2/mso-macos-x86_64.tar.gz"
      sha256 "fc96231b01456f152e0dc172922973a7804591869d8ce440ee690c99b237b15f"
    end
  end

  def install
    bin.install "mso"
  end

  test do
    assert_match "0.4.2", shell_output("#{bin}/mso --version")
  end
end
