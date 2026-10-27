class Larecode < Formula
  desc "Provider-neutral AI coding agent for the terminal"
  homepage "https://github.com/rsyyd/larecode"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.4.0/larecode-darwin-arm64"
      sha256 "699409bda99ad3b32a87fa33a9e1750a5f22415d1878d94f0d69cfb299318398"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.4.0/larecode-darwin-x64"
      sha256 "5e07084fbae3693d6abec4c84976eccce29b1a2adff7b61ed7b75caaf5625b05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.4.0/larecode-linux-arm64"
      sha256 "568bf0ff380affa596f058420ee2db3ddc5502da2f22aa7df0fdea6778d8bde6"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.4.0/larecode-linux-x64"
      sha256 "3c38e756fc0072bcd438023cad79eeeafd6896204ac1be7175693149b9324540"
    end
  end

  def install
    bin.install Dir["larecode-*"].first => "larecode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/larecode --version")
  end
end
