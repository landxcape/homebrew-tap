cask "synkrophase" do
  version "0.1.0"
  sha256 "52f7624184a65e4d6c4e395e0f42fcdd29373d77e92bc57e97644f6a4dc0d6b6"

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
