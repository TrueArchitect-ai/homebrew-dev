class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.2.15"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v#{version}/dev-#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v#{version}/dev-#{version}-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v#{version}/dev-#{version}-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v#{version}/dev-#{version}-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
