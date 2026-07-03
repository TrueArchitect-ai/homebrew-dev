class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.3/dev-0.4.3-darwin-arm64.tar.gz"
      sha256 "5c075c9b24fe17de8131fade5c5fe8ed6d42ab7bd752ff6141272600de327251"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.3/dev-0.4.3-darwin-amd64.tar.gz"
      sha256 "33249dcc35f3ba46644d9aafac71371b08601d486084fed7cfcf8af1ecba6bd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.3/dev-0.4.3-linux-arm64.tar.gz"
      sha256 "f2d9b0cc4ee749b1925a3a7cd876faf63c6a4b23c3fb32167b39f782e2c830fa"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.3/dev-0.4.3-linux-amd64.tar.gz"
      sha256 "fc31b8ec171f83c4038f1668c3601ed5e1e235a426669484944fe3b096e7bf18"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
