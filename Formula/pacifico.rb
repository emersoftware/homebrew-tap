class Pacifico < Formula
  desc "Local archive and MCP recall for AI coding sessions"
  homepage "https://github.com/emersoftware/pacifico"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-arm64.tar.gz"
      sha256 "4b6aaacf5b39b22688ac98b186f1803d27dcafddd62f37a3f5858685622a3d9a"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-darwin-x86_64.tar.gz"
      sha256 "4342a97fdb7ba9a9190806ec92909d68e2a5261468c35e1d86955b36fb6325f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-arm64.tar.gz"
      sha256 "42566ba3d757f732ffd3737279ca193a85fdba5de3b0c8a1618f1b5277f4bb77"
    end
    on_intel do
      url "https://github.com/emersoftware/pacifico/releases/download/v#{version}/pacifico-linux-x86_64.tar.gz"
      sha256 "a29ccfe78ec2868babe56d93b7526142cb010f8d95c3f8e2fe310f7097aa50d6"
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
