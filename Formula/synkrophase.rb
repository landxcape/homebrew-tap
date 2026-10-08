class Synkrophase < Formula
  desc "High-precision external media controller synchronizer for local networks"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.2.2/synkrophase-macos-aarch64.tar.gz"
      sha256 "79b46e5fc0e8150c0660f5bd444ce0096c10957d1b185e96067d0ed04147f7fb"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.2.2/synkrophase-macos-x86_64.tar.gz"
      sha256 "eb0a9076236b34fd297bc48a64911b51a5e20cc8b762d75f97c698e14d5b7e80"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.2.2/synkrophase-linux-x86_64.tar.gz"
      sha256 "506b7838dc1af97b4982c4f6e540313a02609f1570a25d417af67296ba74fc6b"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/synkro --version")
  end
end
