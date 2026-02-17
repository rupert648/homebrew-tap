class Ratunit < Formula
  desc "A rat-powered TUI for viewing JUnit XML test reports"
  homepage "https://github.com/rupert648/ratunit"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rupert648/ratunit/releases/download/v0.1.1/ratunit-aarch64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/rupert648/ratunit/releases/download/v0.1.1/ratunit-x86_64-apple-darwin.tar.gz"
      sha256 "78de42c1b7d49ad332d60e774a41f8688f6414baa9d357ec60d07e7acea36c05"
    end
  end

  def install
    bin.install "ratunit"
  end

  test do
    assert_match "ratunit", shell_output("#{bin}/ratunit --help")
  end
end
