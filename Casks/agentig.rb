cask "agentig" do
  version :latest
  sha256 :no_check

  url "https://agentig.app/download/agentig.dmg"
  name "agentig"
  desc "Git client built around the terminal, for reviewing code that agents write"
  homepage "https://agentig.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "agentig.app"
  binary "#{appdir}/agentig.app/Contents/SharedSupport/bin/agentig"

  zap trash: [
    "~/Library/Application Support/agentig",
    "~/Library/Caches/app.agentig.Agentig",
    "~/Library/HTTPStorages/app.agentig.Agentig",
    "~/Library/Preferences/app.agentig.Agentig.plist",
    "~/Library/Saved Application State/app.agentig.Agentig.savedState",
  ]
end
