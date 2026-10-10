class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.6.2"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.2/synkrophase-macos-aarch64.tar.gz"
      sha256 "8b095f9e463f42e40d8461211d01061d44c4d1f65d57f27f79563043c134f22b"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.2/synkrophase-macos-x86_64.tar.gz"
      sha256 "5f86d424d65b764bdc5d75ae7bd5e9d765bc7bbb047caa23dcd568cd4e28e613"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.2/synkrophase-linux-x86_64.tar.gz"
      sha256 "ff68e634e5efe35c459fac655fe395b74f7de9aa293b13707f521686126caabf"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.6.2", shell_output("#{bin}/synkro --version")
  end
end
