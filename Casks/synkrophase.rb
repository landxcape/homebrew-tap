cask "synkrophase" do
  version "0.1.1"
  sha256 "11f6abe493b946e886c13b59ac08053fece8355162f8ca37e8b8b08872baef00"

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
