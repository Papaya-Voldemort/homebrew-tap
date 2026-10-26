class Monochromium < Formula
  desc "Fast, local-first CLI note-taking app for developers"
  homepage "https://github.com/Papaya-Voldemort/Monochromium"
  url "https://static.crates.io/crates/monochromium/monochromium-0.6.0.crate"
  version "0.6.0"
  sha256 "31d1baf931d0a69b9fe413869f43d640d52f8ab319cb241058fd7d23a02c8f6e"
  license "MIT"

  livecheck do
    url "https://crates.io/api/v1/crates/monochromium"
    regex(/"max_stable_version":\s*"?(\d+(?:\.\d+)+)"?/i)
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "monochromium #{version}", shell_output("#{bin}/mono --version")
  end
end
