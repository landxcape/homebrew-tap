class Synkrophase < Formula
  desc "High-precision external media controller synchronizer for local networks"
  homepage "https://github.com/landxcape/synkrophase"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.2.0/synkrophase-macos-aarch64.tar.gz"
      sha256 "bc1834093915e03fc8646b69816bfbdf45d675a384820e6eb9bad88818cad9db"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.2.0/synkrophase-macos-x86_64.tar.gz"
      sha256 "0e44db95765dd345c0305512a32d4edcd6718bf4c0755aefca2cf7989a98885e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.2.0/synkrophase-linux-x86_64.tar.gz"
      sha256 "4ffdd5f9e337674b1fa19ef49fc0ed9f03b83ba319f4c27075aafd98f254143f"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "synkro", shell_output("#{bin}/synkro --help")
  end
end
