class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.1/synkrophase-macos-aarch64.tar.gz"
      sha256 "1584d48c5715f0d7c7f0c1fa65ca19da4630e96477488729f26cf462cde84e39"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.1/synkrophase-macos-x86_64.tar.gz"
      sha256 "5d9b677de4cb17f009ad611701db197ccc323b7d64137f7511dc26745b502c5a"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.1/synkrophase-linux-x86_64.tar.gz"
      sha256 "a55c4f3c718c8523f33df81f56d1f19a2ea65e8e0fd9c799b5c70dcf637c5a6d"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.6.1", shell_output("#{bin}/synkro --version")
  end
end
