cask "notchlyrics" do
  version "1.1.0"
  sha256 "42105f6a05f6bf2a547bb9cba9163c23d60898db4b09366c7f2adfb38d0358b8"

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
