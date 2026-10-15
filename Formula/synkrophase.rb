class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.2/synkrophase-macos-aarch64.tar.gz"
      sha256 "fa8ff723fba05697fac661bd7e63f9bec74558e3267a085e4ea285103cc9a072"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.2/synkrophase-macos-x86_64.tar.gz"
      sha256 "08dd9af6563931bee95466449eb96f2cbba60517a79f07402852748694168865"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.7.2/synkrophase-linux-x86_64.tar.gz"
      sha256 "42cfc7b5cdd0f3236a54d0da3eab736a9d50c86649d5ff9b2399abfafdc794fd"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.7.2", shell_output("#{bin}/synkro --version")
  end
end
