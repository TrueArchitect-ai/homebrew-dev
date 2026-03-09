class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.2.17"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.17/dev-0.2.17-darwin-arm64.tar.gz"
      sha256 "dba6f6d01fe3a1b1f8e4e23d5c98f15b4529243c368af81f73c529b41ae90fa1"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.17/dev-0.2.17-darwin-amd64.tar.gz"
      sha256 "5a9dfffd21fe234df47f7d4222e555ab1dc7216cd7209ba28fedfa7e378779cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.17/dev-0.2.17-linux-arm64.tar.gz"
      sha256 "33c64b33451b4ce1ca3c9e2ba31c20aa637e435f07be45fc93ebe55023b2d5e5"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.2.17/dev-0.2.17-linux-amd64.tar.gz"
      sha256 "bdbb36cf4ed656bec41c303482b74546f3f3c8f3a04cb77073b390deeb3fbba1"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
