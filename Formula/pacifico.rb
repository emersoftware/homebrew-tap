class Pacifico < Formula
  desc "Local archive and MCP recall for AI coding sessions"
  homepage "https://github.com/emersoftware/pacifico"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-arm64.tar.gz"
      sha256 "7bd19b6ce0b222b0a93fb92483afc2b902e4d7a2f1ca375e52f0d7e38be9d43d"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-x86_64.tar.gz"
      sha256 "d78cdf53c3db3a42cd8f9df5c44af02dacd21bdeff283ba511bb47cbd5d208f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-arm64.tar.gz"
      sha256 "ac64696859c225d87467b42656124ec41b1f68003c17a7bcaef70c8011fcdea4"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-x86_64.tar.gz"
      sha256 "8a1a5a3097ebc55894c2798521bd28ec67d9e45fe775265c33dc40a33afd32ed"
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
