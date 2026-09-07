class Pacifico < Formula
  desc "Local archive and MCP recall for AI coding sessions"
  homepage "https://github.com/emersoftware/pacifico"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-arm64.tar.gz"
      sha256 "0db8e6eb84540aebc1cd6fd76939d3d5b1257befb8c5bfe945976a2cf24e4e83"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-x86_64.tar.gz"
      sha256 "354b2237ed3329b8ff21eff73b7d9ad5889c515a235a4ce6bb406024d2f9d6f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-arm64.tar.gz"
      sha256 "171134cf54dba37b6fd38edf3d4305d17e14f9f96f25b15125a92ce2a9e06151"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-x86_64.tar.gz"
      sha256 "fa9716e45bb775744aae792afd6ca8b75e771bf5a4620d05472392f7d1545862"
    end
  end

  def install
    bin.install "pacifico"
    pkgshare.install "LICENSE", "NOTICE"
  end

  test do
    assert_equal "pacifico #{version}", shell_output("#{bin}/pacifico --version").strip
    assert_match "Usage:", shell_output("#{bin}/pacifico --help 2>&1")
  end
end
