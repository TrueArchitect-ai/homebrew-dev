class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.18"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.18/dev-0.4.18-darwin-arm64.tar.gz"
      sha256 "8927043a095c48c286b4ce4e065e90f2c0b39853768022680a88ff81fb4347fa"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.18/dev-0.4.18-darwin-amd64.tar.gz"
      sha256 "21facccc1b327f407c5dc005ebda3383bf5fb1c27908cc267a1d524350c7e160"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.18/dev-0.4.18-linux-arm64.tar.gz"
      sha256 "b544ddc62e526284ca694c2247345e6191733ed5a9f658c078863077d0d26688"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.18/dev-0.4.18-linux-amd64.tar.gz"
      sha256 "937f98d317dd7b3389b5f3a9b1526ed2d15d065dbdd382107fef478103da5a7d"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
