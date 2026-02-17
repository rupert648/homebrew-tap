class Ratunit < Formula
  desc "A rat-powered TUI for viewing JUnit XML test reports"
  homepage "https://github.com/rupert648/ratunit"
  url "https://github.com/rupert648/ratunit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "afb377c47bce77b8688db7fffc8c99811691838b85f2aef7226fa5f288d37c84"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/ratunit")
  end

  test do
    assert_match "ratunit", shell_output("#{bin}/ratunit --help")
  end
end
