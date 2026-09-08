class Pacifico < Formula
  desc "Local archive and MCP recall for AI coding sessions"
  homepage "https://github.com/emersoftware/pacifico"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-arm64.tar.gz"
      sha256 "9b3a3c55e982b2540ee02075ac1de451c6eb96d7baf51eaea58b7f2e02e51719"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-x86_64.tar.gz"
      sha256 "d300782abb2fbb5f00b650405129bc81880b0a982dc66ec77c2910fa748c5cfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-arm64.tar.gz"
      sha256 "10ffe47cda6c175621464236e82ea3180527937d6ca33530a1a160db1aae7ff1"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-x86_64.tar.gz"
      sha256 "d7e13ce239bcb47bd8633cebbeb04c2494736e6031ab8b0586d5fa72d3a7165e"
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
