class Larecode < Formula
  desc "Provider-neutral AI coding agent for the terminal"
  homepage "https://github.com/rsyyd/larecode"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.1.1/larecode-darwin-arm64"
      sha256 "0a430fe8c008637e406f0a494553b55c8bab19a6659b76c10335998638e98748"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.1.1/larecode-darwin-x64"
      sha256 "82c668bb73613d50237331e6f57c4e07bd81bc09ad993e41ab8f30ee268de856"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rsyyd/larecode/releases/download/v0.1.1/larecode-linux-arm64"
      sha256 "30ebf5773f0bfe8b62565119c0d17cc8a4c84a28f08c5368b14ff0dc304b0cc3"
    end

    on_intel do
      url "https://github.com/rsyyd/larecode/releases/download/v0.1.1/larecode-linux-x64"
      sha256 "dc728dee0118b5ca640e62d937611e2c90ddf70e59944b8d90cd9c9b013ebf5b"
    end
  end

  def install
    bin.install Dir["larecode-*"].first => "larecode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/larecode --version")
  end
end
