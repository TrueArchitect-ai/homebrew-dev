class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.8"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.8/dev-0.4.8-darwin-arm64.tar.gz"
      sha256 "b7ad27b1b8844fbcd1b6de61e65c9ebe6fb04f10b4bfa89d969ce37da4c95ecc"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.8/dev-0.4.8-darwin-amd64.tar.gz"
      sha256 "f30cf43b24550f3c199e8f6f9017232d797957c8709bfe0170ab8b3006ea3882"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.8/dev-0.4.8-linux-arm64.tar.gz"
      sha256 "5368df058b0b0e256d6671ebcb99e9f31f6504e6f24a0c6ebb9b363ff31d125b"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.8/dev-0.4.8-linux-amd64.tar.gz"
      sha256 "0abe37524811f9d1374b0ca7a7492ea098a2c497ff2fc00576f569d7bc1fbd37"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
