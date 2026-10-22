class Larecode < Formula
  desc "Provider-neutral AI coding agent for the terminal"
  homepage "https://github.com/rsyyd/larecode"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.3.0/larecode-darwin-arm64"
      sha256 "67a19faac30008b906fd8cb7416b72e4948ed425cb32daccd43212e7fd9367fe"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.3.0/larecode-darwin-x64"
      sha256 "254a5c6ab9a69c9984a1ae8cc266b736683c80d0b054d5e8b51ca20d7cfa2ce0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.3.0/larecode-linux-arm64"
      sha256 "d312fd850e32fb7ca5b612c9df539514b72e1536ffb9bff4b5d1d276725ccec0"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.3.0/larecode-linux-x64"
      sha256 "35313d337ceac0f938099c740c61a911ecf677f5745a860f2401dab0d1295638"
    end
  end

  def install
    bin.install Dir["larecode-*"].first => "larecode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/larecode --version")
  end
end
