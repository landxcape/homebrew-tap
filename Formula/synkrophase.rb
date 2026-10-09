class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.3.4"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.4/synkrophase-macos-aarch64.tar.gz"
      sha256 "fd3ef3c35d179a276a58a11892f7c3b93df635b1e0626f6aa2256303809c13da"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.4/synkrophase-macos-x86_64.tar.gz"
      sha256 "5cc7842208850607797017d78d13e55b798d7ac7a581e2e7d012a4faebc3f082"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.4/synkrophase-linux-x86_64.tar.gz"
      sha256 "6b9fedcca1a06d76ccb6384cffe21f2431974003cb6127a551b895e7917c2c3a"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.3.4", shell_output("#{bin}/synkro --version")
  end
end
