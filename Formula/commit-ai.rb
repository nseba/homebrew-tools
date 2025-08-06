class CommitAi < Formula
  desc "AI-powered commit message generator"
  homepage "https://github.com/nseba/commit-ai"
  url "https://github.com/nseba/commit-ai/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "your-archive-sha256-hash-here"
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
