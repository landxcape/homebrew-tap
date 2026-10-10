class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.5.0/synkrophase-macos-aarch64.tar.gz"
      sha256 "e3baa0936c88ae1f2f954f07f29cc46a56acc5c97e6a0743c527cb137a8424a6"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.5.0/synkrophase-macos-x86_64.tar.gz"
      sha256 "9956521488d55876aa6f8856531ca74ef766cf183cca3c554672219dcb5bd1a9"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.5.0/synkrophase-linux-x86_64.tar.gz"
      sha256 "45fd5234d196a949ece7c9684ad48cc94cd57369a91923a5b538c165f2ac131a"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/synkro --version")
  end
end
