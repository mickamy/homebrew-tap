cask "sitless" do
  version "0.0.2"
  sha256 "8d9e9e0b1433d58335ea632dd22013f00f6c79c765d848228469f45e22dfa070"

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
