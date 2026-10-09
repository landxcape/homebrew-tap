class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.3.2"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.2/synkrophase-macos-aarch64.tar.gz"
      sha256 "5da330d299b6135351a733d4959618f4953708db6869c75ca66a008655b60dca"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.2/synkrophase-macos-x86_64.tar.gz"
      sha256 "a759886654c5c0b1b0c3be5879bd30cba3dccff88f2cecc1018b8879c9fe7024"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.3.2/synkrophase-linux-x86_64.tar.gz"
      sha256 "234cc9e2ba2f2fbdaa137b89e19a05fd26bc91a3283264ae9c4eb94dc2bf5ff9"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.3.2", shell_output("#{bin}/synkro --version")
  end
end
