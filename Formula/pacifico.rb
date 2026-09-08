class Pacifico < Formula
  desc "Local archive and MCP recall for AI coding sessions"
  homepage "https://github.com/emersoftware/pacifico"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-arm64.tar.gz"
      sha256 "668d7f1b46d20803b9f28baec58a67faf9f4a2e0cbb8207338c44e0b889ecb88"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-x86_64.tar.gz"
      sha256 "0b8251e9151450384f0a4798ab0d238882085ff44b0630b734ff78e036af8143"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-arm64.tar.gz"
      sha256 "fb225f3977afac82a468e9d5c8e63c0050e9e4abfa72165fb89434db5d03e2db"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-x86_64.tar.gz"
      sha256 "01c39384946190fde8087531525500dbb672b3dd7022c7ebcefc87fd55e5b306"
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
