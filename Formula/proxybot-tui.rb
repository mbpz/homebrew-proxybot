class ProxybotTui < Formula
  desc "ProxyBot TUI — HTTPS MITM proxy terminal UI"
  homepage "https://github.com/mbpz/proxybot"
  license "MIT"
  version "v0.3.0"

  if OS.mac? && Hardware::CPU.type == :arm64
    url "https://github.com/mbpz/proxybot/releases/download/tui-v0.3.0/proxybot-tui-arm64"
    sha256 "27af394f03678b3a9ee8644a1a2150789edd46789e8784d0161d600b20193940"
  elsif OS.mac? && Hardware::CPU.type == :intel
    url "https://github.com/mbpz/proxybot/releases/download/tui-v0.3.0/proxybot-tui-x86_64"
    sha256 "6bb91c3e69bcfd5b3b514068ef094c881dafe0502a9d35d38f92747b3e8de848"
  end

  def install
    bin.install "proxybot-tui" => "proxybot-tui"
  end
end
