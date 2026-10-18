class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.0/synkrophase-macos-aarch64.tar.gz"
      sha256 "f0b3463d88616ce9e41ae3dee6469a1c2e7686562a26aa8e19c2b4434993ed5f"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.0/synkrophase-macos-x86_64.tar.gz"
      sha256 "c20ab45bb99acb05203fc164ab9c24b902a725edd45e1a98a7726782cc8e76a8"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.0/synkrophase-linux-x86_64.tar.gz"
      sha256 "3d8d1113127e72ba903bc8f56fe68940dfa50e0d89ebcbf100062e0d777e957a"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/synkro --version")
  end
end
