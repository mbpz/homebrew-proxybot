class ProxybotTui < Formula
  desc "ProxyBot TUI — HTTPS MITM proxy terminal UI"
  homepage "https://github.com/mbpz/proxybot"
  license "MIT"
  version "v0.2.7"

  if Hardware::CPU == :arm64
    url "https://github.com/mbpz/proxybot/releases/download/tui-v0.2.7/proxybot-tui-arm64"
    sha256 "28bcd8216f22578ee1578a94dad37881736d3efd6337a093716c3473fa428a9b"
  else
    url "https://github.com/mbpz/proxybot/releases/download/tui-v0.2.7/proxybot-tui-x86_64"
    sha256 "048c00b7a83ac09865523f6ccaec44237ef1f289037aa15c9b233b32e38165bc"
  end

  def install
    bin.install "proxybot-tui" => "proxybot-tui"
  end
end
