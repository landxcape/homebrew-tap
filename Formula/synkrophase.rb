class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.3/synkrophase-macos-aarch64.tar.gz"
      sha256 "3bc6296a9c167f3010d6b910bbc18404b9725f3cb8cabafe8824c95fb8394cf7"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.3/synkrophase-macos-x86_64.tar.gz"
      sha256 "f359d1f55a9848fb76f017b659c9e622d20131fce300aa6704ca6b27d10962b5"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.8.3/synkrophase-linux-x86_64.tar.gz"
      sha256 "e7fb7ee876a1582ad0c3d21e519a9d63a622c3f207e2b5a406b3df561cb84067"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.8.3", shell_output("#{bin}/synkro --version")
  end
end
