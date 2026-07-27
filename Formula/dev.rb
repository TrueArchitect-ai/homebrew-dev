class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.13"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.13/dev-0.4.13-darwin-arm64.tar.gz"
      sha256 "848e25d154d5d83a8814e9f3c065687b4ba04d5d692e6a15270b7e8418f5ce85"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.13/dev-0.4.13-darwin-amd64.tar.gz"
      sha256 "e45e36094bb946a76d851a79e270be63d259127548d499df899611a9f34d89bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.13/dev-0.4.13-linux-arm64.tar.gz"
      sha256 "3cd67ac9ef705475b8a7bdc3ab1b1e86ecee79296ef5d140680bef8edbdf6d83"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.13/dev-0.4.13-linux-amd64.tar.gz"
      sha256 "8bb60a42153fef5a5dd478d07808e5b79eaebdfb8a0011c4e52b9d349f6258b0"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
