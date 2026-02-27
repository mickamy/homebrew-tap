cask "sitless" do
  version "0.0.1"
  sha256 "961de02677a3937a2e8f61eb5c7a7abb5f2b4caae9219e78f965839a7827c77d"

  url "https://github.com/mickamy/SitLess/releases/download/v#{version}/SitLess.app.zip"
  name "SitLess"
  desc "macOS menu bar app that reminds you to stretch"
  homepage "https://github.com/mickamy/SitLess"

  app "SitLess.app"

  zap trash: [
    "~/Library/Preferences/com.mickamy.SitLess.plist",
  ]
end
