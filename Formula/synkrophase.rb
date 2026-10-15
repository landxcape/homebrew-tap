class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.4/synkrophase-macos-aarch64.tar.gz"
      sha256 "941f852bc82f8858f651879e8e1d1b309bd91daa044d30064ac981aca5daa880"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.4/synkrophase-macos-x86_64.tar.gz"
      sha256 "521e9859285eb6a58ec0ae3b105a11d3140f6b1aa1c2864eb400c4469c6c05ff"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.4/synkrophase-linux-x86_64.tar.gz"
      sha256 "f24a3bead131261ca3d749b04eb5d4031c6c3acf8c1b298f88a9c3c4452f2a84"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.7.4", shell_output("#{bin}/synkro --version")
  end
end
