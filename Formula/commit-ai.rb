class CommitAi < Formula
  desc "AI-powered commit message generator"
  homepage "https://github.com/nseba/commit-ai"
  url "https://github.com/nseba/commit-ai/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "ad51ab3fa377c0b109e499e6e74d286506ef07e827ea3e24baf060571bc5fdbc"
  license "MIT"

  depends_on "go" => :build  # if it's a Go project

  def install
    # Build and install instructions
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # Test that the binary was installed correctly
    assert_match "commit-ai", shell_output("#{bin}/commit-ai --version")
  end
end
