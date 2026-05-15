cask "proxybot" do
  arch arm: "arm64", intel: "x64"

  version "1.2.15"
  sha256 arm:   "439ce16fc2b35c5fc49db849e119c123731c60c21a1fc1de1445a4e75c704ff1",
         intel: "4936fbdda74cb759aba797cd13a15bee5701bdecebf974c6b3261d4013f5ce48"

  url "https://github.com/mbpz/proxybot/releases/download/v#{version}/ProxyBot-#{version}-mac-#{arch}.zip"
  name "ProxyBot"
  desc "HTTPS MITM proxy tool for developers — capture and decrypt mobile traffic"
  homepage "https://github.com/mbpz/proxybot"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  artifact "ProxyBot.app", target: "/Applications/ProxyBot.app"

  uninstall quit: "com.proxybot.app",
            delete: "/Applications/ProxyBot.app"

  zap trash: [
    "~/.proxybot",
    "~/Library/Application Support/com.proxybot.app",
    "~/Library/Preferences/com.proxybot.app.plist",
    "~/Library/Saved Application State/com.proxybot.app.savedState",
  ]
end
