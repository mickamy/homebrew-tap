cask "sitless" do
  version "0.0.4"
  sha256 "e336cc6708831ba28b7e4821fd16044fea253214b120df62d5ecc049bb7c4622"

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
