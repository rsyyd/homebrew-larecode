class Larecode < Formula
  desc "Provider-neutral AI coding agent for the terminal"
  homepage "https://github.com/rsyyd/larecode"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.2.0/larecode-darwin-arm64"
      sha256 "8a5bf0f8d14b28d492e4d48edfb05c2d463dc9f29bfdda7e8cd6595122251e0f"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.2.0/larecode-darwin-x64"
      sha256 "cc2213a91cc596847adf035c10a77d3fb5101a207494c4335b7b5e3499963960"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.2.0/larecode-linux-arm64"
      sha256 "3b9dad37b64129c6177735521f25a8f3e8942045ea233891543ac1a5e888ee78"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.2.0/larecode-linux-x64"
      sha256 "fa87d5d5b1c5fde96d56d2916dcc2e699d60f75a0588add60eefb0fded698c90"
    end
  end

  def install
    bin.install Dir["larecode-*"].first => "larecode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/larecode --version")
  end
end
