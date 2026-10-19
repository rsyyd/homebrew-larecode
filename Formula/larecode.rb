class Larecode < Formula
  desc "Provider-neutral AI coding agent for the terminal"
  homepage "https://github.com/rsyyd/larecode"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.1.0/larecode-darwin-arm64"
      sha256 "e5591dcb98b64c9277eba6478609deb3941678a4d791a0f62c1e9e79ac244f73"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.1.0/larecode-darwin-x64"
      sha256 "8654008ef3cdf8a2c3964f00b2bf57d7a52bc06626d5b28a0356aea723ecdbe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.1.0/larecode-linux-arm64"
      sha256 "469e98322b4adf11db8aafc998131929154e084fb07604dbd727b7fb8c3e8641"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.1.0/larecode-linux-x64"
      sha256 "7ff07745b8aed8675107ba671a55f528979ac9d43ae14ad1482592d03ca0c628"
    end
  end

  def install
    bin.install Dir["larecode-*"].first => "larecode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/larecode --version")
  end
end
