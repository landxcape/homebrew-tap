class Synkrophase < Formula
  desc "Local network media controller synchronizer"
  homepage "https://github.com/landxcape/synkrophase"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.9/synkrophase-macos-aarch64.tar.gz"
      sha256 "d725109a178a7610cf10de6abea3ba87c8c5c541e1329419e6a4f1686c555713"
    elsif Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.9/synkrophase-macos-x86_64.tar.gz"
      sha256 "d2d28f234d10caf03f5b59ee272a843b1057dfa2eb62c089b04ae2187b3b4077"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/landxcape/synkrophase/releases/download/v0.6.9/synkrophase-linux-x86_64.tar.gz"
      sha256 "1a27b7bf566d58357c1763c4d35178318ee1fd829dcfb12b4c24bb474d27f18f"
    end
  end

  def install
    bin.install "synkro"
  end

  test do
    assert_match "0.6.9", shell_output("#{bin}/synkro --version")
  end
end
