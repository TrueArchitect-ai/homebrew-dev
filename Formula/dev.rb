class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.17"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.17/dev-0.4.17-darwin-arm64.tar.gz"
      sha256 "94969d26ffd931285187b3af4188f81040b6eea4f4751d604008330d4e09221a"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.17/dev-0.4.17-darwin-amd64.tar.gz"
      sha256 "b7413d6186be3475cff7a6fc0174ea0bdf38cad72ffb643cefc211fdab0931fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.17/dev-0.4.17-linux-arm64.tar.gz"
      sha256 "fc97f63282155cc5f686a1df5bb7a9644135ac08b6b76b2c958fd4ba75c3950a"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.17/dev-0.4.17-linux-amd64.tar.gz"
      sha256 "2e855899c6e02906891206f98ad330f96f5b656851c9b813bd52d0ffdf8d5803"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
