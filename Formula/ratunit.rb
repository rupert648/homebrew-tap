class Ratunit < Formula
  desc "A rat-powered TUI for viewing JUnit XML test reports"
  homepage "https://github.com/rupert648/ratunit"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rupert648/ratunit/releases/download/v0.1.1/ratunit-aarch64-apple-darwin.tar.gz"
      sha256 "c624bda15b643de9b3ee81acc26303517ef91d7b463a3629d37fad6141944ee6"
    else
      url "https://github.com/rupert648/ratunit/releases/download/v0.1.1/ratunit-x86_64-apple-darwin.tar.gz"
      sha256 "d5a60ccced20bcb09109f83e56c5b0b71d27e74ebc6468c1e9529e8dd85b4c8d"
    end
  end

  def install
    bin.install "ratunit"
  end

  test do
    assert_match "ratunit", shell_output("#{bin}/ratunit --help")
  end
end
