class Focusd < Formula
  desc "Beautiful terminal pomodoro timer with daemon, waybar integration and TUI"
  homepage "https://github.com/bibekbhusal0/focusd"
  url "https://github.com/bibekbhusal0/focusd/archive/refs/tags/v0.2.11.tar.gz"
  sha256 "e1de13cc9e1984fbec71192b4fd0e63951b7f5fae5f8975b549e8f962a24eb87"
  license "MIT"
  head "https://github.com/bibekbhusal0/focusd.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"focusd", "--help"
  end
end
