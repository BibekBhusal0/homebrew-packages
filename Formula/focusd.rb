class Focusd < Formula
  desc "Beautiful terminal pomodoro timer with daemon, waybar integration and TUI"
  homepage "https://github.com/bibekbhusal0/focusd"
  url "https://github.com/bibekbhusal0/focusd/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "206d8f7a46f335464d1e05555cae1317330d393270c40a30d765896dd5d4a1a2"
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
