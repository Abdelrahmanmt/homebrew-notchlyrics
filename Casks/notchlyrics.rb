cask "notchlyrics" do
  version "1.2.0"
  sha256 "0cbac2ddd4f8d7e8b71d6c3a4aa73d3cb867c3d2d8d6bff1f2a9d1593e3d4399"

  url "https://github.com/Abdelrahmanmt/homebrew-notchlyrics/releases/download/v#{version}/NotchLyrics.dmg"
  name "NotchLyrics"
  desc "Live synced Spotify lyrics in your MacBook notch"
  homepage "https://github.com/Abdelrahmanmt/homebrew-notchlyrics"

  depends_on macos: ">= :sequoia"

  app "NotchLyrics.app"

  zap trash: [
    "~/Library/Caches/com.notchlyrics.app",
    "~/Library/Caches/NotchLyrics",
    "~/Library/HTTPStorages/com.notchlyrics.app",
    "~/Library/HTTPStorages/NotchLyrics",
  ]
end
