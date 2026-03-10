class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.2.19"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.19/dev-0.2.19-darwin-arm64.tar.gz"
      sha256 "ba8ad0a0ffc15699f10eb100c668f6faa402604bdf29305d33330cc7b86305d2"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.19/dev-0.2.19-darwin-amd64.tar.gz"
      sha256 "83351d1cc23edeecffd50eee103ba70f74910a8f80eb8680503c04877ccfec65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.19/dev-0.2.19-linux-arm64.tar.gz"
      sha256 "bed080cd50eca0a821fe2d36b4c691819b59ddb126669fb47ef0aa6b708a4df0"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.19/dev-0.2.19-linux-amd64.tar.gz"
      sha256 "798d8e16812892e5cbc76a92b806fb82f9819d5e276c0b528ec1be2313e7a440"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
