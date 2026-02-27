cask "sitless" do
  version "0.0.3"
  sha256 "6970e165addce689400c5ad615af03cae4ca1984a6dd0429580ed9828c27e0c6"

  url "https://github.com/mickamy/SitLess/releases/download/v#{version}/SitLess.app.zip"
  name "SitLess"
  desc "macOS menu bar app that reminds you to stretch"
  homepage "https://github.com/mickamy/SitLess"

  app "SitLess.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/SitLess.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.mickamy.SitLess.plist",
  ]
end
