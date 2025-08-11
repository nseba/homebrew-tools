class CommitAi < Formula
  desc "AI-powered commit message generator"
  homepage "https://github.com/nseba/commit-ai"
  url "https://github.com/nseba/commit-ai/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "f70378c2ffd5504a583948c0f674951a197caf760e6d559cf9dd3e8e462cce13"
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
