class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.2.21"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.21/dev-0.2.21-darwin-arm64.tar.gz"
      sha256 "202e3c9c9090fee815df18b519e631c2bb802fc1c9c6c09d6cc9fdd6c790f574"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.21/dev-0.2.21-darwin-amd64.tar.gz"
      sha256 "4999a0d68b7c28ca6519bdd6331c9fb40c2952ebd52e380ea2daaf470eb6b05c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.21/dev-0.2.21-linux-arm64.tar.gz"
      sha256 "59d6dfa3100399a102c85163eadf4d4639b5ce9aabf6a5262aa52c49e2e7859b"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.21/dev-0.2.21-linux-amd64.tar.gz"
      sha256 "b60ef7d9f714da6edd57abe8a15d3e38d3146164d7f4e43e248c34bbfd581bb6"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
