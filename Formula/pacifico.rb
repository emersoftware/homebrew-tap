class Pacifico < Formula
  desc "Local archive and MCP recall for AI coding sessions"
  homepage "https://github.com/emersoftware/pacifico"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-arm64.tar.gz"
      sha256 "457e6b9dd4ae5e4cfe4c67c2b471a6ed8f25f520c86321065d812cd8ef240363"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-x86_64.tar.gz"
      sha256 "e6d50595ab908fb7184aa7060707993238be3a57e5b30082b8430914edbcaa2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-arm64.tar.gz"
      sha256 "ff1dabd361d7b1bfa46d8028fe8e5e88c586f95417a5c791195bcaded7c0017d"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-x86_64.tar.gz"
      sha256 "cf8a07919d420409da9a99fdd611122b49f9814a4f89c560b5c123a33ae75f29"
    end
  end

  def install
    bin.install "pacifico"
    pkgshare.install "LICENSE"
  end

  test do
    assert_equal "pacifico #{version}", shell_output("#{bin}/pacifico --version").strip
    assert_match "Usage:", shell_output("#{bin}/pacifico --help 2>&1")
  end
end
