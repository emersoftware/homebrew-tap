class Pacifico < Formula
  desc "Local archive and MCP recall for AI coding sessions"
  homepage "https://github.com/emersoftware/pacifico"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-arm64.tar.gz"
      sha256 "097f04d7a7d60b95d726bd60bc2daf58b464ca44885ebc400da7806ce527548e"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-x86_64.tar.gz"
      sha256 "8ea372f877b9f53e985cf7467889e85f1bdf330794e526f14de1b7d72911fc2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-arm64.tar.gz"
      sha256 "1e5da2f119358a6d6a55ce7b1885a7740b22d9716b2bf811d9505808df4f1ece"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-x86_64.tar.gz"
      sha256 "7c4685bd61a6f8d86a7d2bd46aea3c172e35264331ac1bfdc4d6b7390ce5ea3e"
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
