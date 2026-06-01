# Homebrew cask for NotchLyrics.
#
# Publish by creating a public GitHub repo named "homebrew-notchlyrics" and
# putting this file at Casks/notchlyrics.rb, then uploading NotchLyrics.dmg to a
# GitHub Release tagged v1.1.0. Users then run:
#
#   brew tap YOUR_GH_USERNAME/notchlyrics
#   brew install --cask --no-quarantine notchlyrics
#
# --no-quarantine lets the (un-notarized) app open cleanly with no Gatekeeper
# "damaged" prompt — the standard path for indie unsigned Mac apps.
#
# Before publishing: replace YOUR_GH_USERNAME below. The sha256 is for the
# current build/NotchLyrics.dmg; re-run `shasum -a 256 build/NotchLyrics.dmg`
# and update it whenever you ship a new DMG.

cask "notchlyrics" do
  version "1.1.0"
  sha256 "42105f6a05f6bf2a547bb9cba9163c23d60898db4b09366c7f2adfb38d0358b8"

  url "https://github.com/Abdelrahmanmt/homebrew-notchlyrics/releases/download/v#{version}/NotchLyrics.dmg"
  name "NotchLyrics"
  desc "Live synced Spotify lyrics in your MacBook notch"
  homepage "https://github.com/Abdelrahmanmt/notchlyrics"

  depends_on macos: ">= :sequoia"

  app "NotchLyrics.app"

  zap trash: [
    "~/Library/Caches/com.notchlyrics.app",
    "~/Library/Caches/NotchLyrics",
    "~/Library/HTTPStorages/com.notchlyrics.app",
    "~/Library/HTTPStorages/NotchLyrics",
  ]
end
