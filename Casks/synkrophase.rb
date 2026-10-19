cask "synkrophase" do
  version "0.1.2"
  sha256 "19226b892c779b47cc2b10fd417e0a7b140f1c437dc955672c36a1a7af6a6e6a"

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
