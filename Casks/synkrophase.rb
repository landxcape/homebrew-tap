cask "synkrophase" do
  version "0.1.3"
  sha256 "8249d6d70290ae644a78d8fd800a7f643ea25a12bf99ea7e4d49fb84db52de26"

  url "https://github.com/landxcape/synkrophase-gui/releases/download/v#{version}/Synkrophase-macos-arm64.zip"
  name "Synkrophase"
  desc "Native menu bar controller synchronizer for local networks"
  homepage "https://github.com/landxcape/synkrophase-gui"

  depends_on macos: :sonoma
  depends_on formula: "landxcape/tap/synkrophase"

  app "Synkrophase.app"

  zap trash: [
    "~/.synkro",
    "~/Library/Preferences/com.shakyapurna.synkrophase-gui.plist",
  ]
end
