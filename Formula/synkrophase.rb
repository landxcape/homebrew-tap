class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.6.8"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.8/synkrophase-macos-aarch64.tar.gz"
      sha256 "c1650547d541b035b9504712567bdacd4dd57b923730d81718d9fb043531d00a"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.8/synkrophase-macos-x86_64.tar.gz"
      sha256 "36b8a37f4b362f8b64dfbe3fb0e48c2e1262a2ee49b14ce15f8b8253406b288c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.8/synkrophase-linux-x86_64.tar.gz"
      sha256 "1e38a0089271af1ba1e2eed011506ecf9937025c5df4c594044e9e4e102bd8e6"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.6.8", shell_output("#{bin}/synkro --version")
  end
end
