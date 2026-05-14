cask "proxybot" do
  arch arm: "arm64", intel: "x64"

  version "0.1.99-test"
  sha256 arm:   "7edd0fa141f6e89d15bc8c2bee532c1f1a695842ed89c29f2ffd9c9798809857",
         intel: "TODO"

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
