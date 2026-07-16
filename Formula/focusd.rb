class Focusd < Formula
  desc "Beautiful terminal pomodoro timer with daemon, waybar integration and TUI"
  homepage "https://github.com/bibekbhusal0/focusd"
  url "https://github.com/bibekbhusal0/focusd/archive/refs/tags/v-0.1.0.tar.gz"
  sha256 "7728c4418914fb464b41733e45ca690bf0aafa030e91334b9124086d0bd3795a"
  license "MIT"
  head "https://github.com/bibekbhusal0/focusd.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/focusd", "--help"
  end
end
