class Focusd < Formula
  desc "Beautiful terminal pomodoro timer with daemon, waybar integration and TUI"
  homepage "https://github.com/bibekbhusal0/focusd"
  url "https://github.com/bibekbhusal0/focusd/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "b5c4bd8e4fac6c7db7525959a1081ab99786aea19ec2e85cdd6dc04206a80880"
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
