class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.2.20"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.20/dev-0.2.20-darwin-arm64.tar.gz"
      sha256 "314710f34c85b346273ad44a79ed9831a9d138eab7560960ca7416f9f4841587"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.20/dev-0.2.20-darwin-amd64.tar.gz"
      sha256 "a821fb3611e412a01a3537a1d2331d70d1fd2f7bf5d9741d2e13eb484c58ce1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.20/dev-0.2.20-linux-arm64.tar.gz"
      sha256 "f7a9c82de81071dfc66e5b2109b0b0395f2706fbfc9dce1b0cc97e4aaf00385c"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.20/dev-0.2.20-linux-amd64.tar.gz"
      sha256 "c163932c8fb43c992b675fc76495f048d25c2089b93626e8c41f2c1483508eec"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
