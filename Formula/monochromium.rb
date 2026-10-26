class Monochromium < Formula
  desc "Fast, local-first CLI note-taking app for developers"
  homepage "https://github.com/Papaya-Voldemort/Monochromium"
  url "https://github.com/Papaya-Voldemort/Monochromium/releases/download/v0.6.0/monochromium-v0.6.0-macos-universal"
  sha256 "e2baae7e219275d3de2b1830e7f8368b1e778e1c7cc44ead1e00eb951413cc1b"
  license "MIT"

  livecheck do
    url "https://github.com/Papaya-Voldemort/Monochromium/releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install Dir["monochromium-*-macos-universal"].first => "mono"
  end

  test do
    assert_match "monochromium #{version}", shell_output("#{bin}/mono --version")
  end
end
