cask "pulse" do
  version "2026.1"
  sha256 "c66bb65ec1f10fe76c4602c75108774929810f95e47fdf921b774e6b2e62e978"

  url "https://github.com/jsattler/Pulse/releases/download/v#{version}/Pulse-#{version}-arm64.dmg"
  name "Pulse"
  desc "A beautiful, non-intrusive service monitor that lives in your notch."
  homepage "https://github.com/jsattler/Pulse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Pulse.app"

  zap trash: [
    "~/Library/Application Support/Pulse",
    "~/Library/Caches/com.sattlerjoshua.Pulse",
    "~/Library/Preferences/com.sattlerjoshua.Pulse.plist",
  ]
end
