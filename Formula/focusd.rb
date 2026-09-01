class Focusd < Formula
  desc "Beautiful terminal pomodoro timer with daemon, waybar integration and TUI"
  homepage "https://github.com/bibekbhusal0/focusd"
  url "https://github.com/bibekbhusal0/focusd/archive/refs/tags/v0.2.13.tar.gz"
  sha256 "f732f3e87d3987e7f5fad2b803df3985a144db973f3b8ce02b0859a2681137ec"
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
