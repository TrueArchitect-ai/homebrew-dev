class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.2/dev-0.4.2-darwin-arm64.tar.gz"
      sha256 "668e29edaa34daf44e11e0f4d9322fe956a6887e2a718eb6ba4671c31d99d8c9"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.2/dev-0.4.2-darwin-amd64.tar.gz"
      sha256 "1eea8a8816c94d349cc3bb7eede2a385f774b54bb8cf9e486a1eb385d12161f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.2/dev-0.4.2-linux-arm64.tar.gz"
      sha256 "9e60a5ecda9f90fe9ada1013954ce74cf6689a7c653f04609eebf56343c3071d"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.2/dev-0.4.2-linux-amd64.tar.gz"
      sha256 "59c1f237efd879160aab75601b267a9dafd94a5561bcf6c18400d693ac7486e8"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
