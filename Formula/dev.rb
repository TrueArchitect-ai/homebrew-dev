class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.6"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.6/dev-0.4.6-darwin-arm64.tar.gz"
      sha256 "e1f3471b36a9997d535b9368c970bd9c1023ad39ee2c5ef82060d13d0fa9e230"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.6/dev-0.4.6-darwin-amd64.tar.gz"
      sha256 "89b1b966cf018b26b753e009aad18b85db69cf58a8b7f730c32ee7fbccb80c6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.6/dev-0.4.6-linux-arm64.tar.gz"
      sha256 "caa82ec6ae74bff6706edf8b9d1aa8de250ac3726ddb1ac4bef610d13c92fffe"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.6/dev-0.4.6-linux-amd64.tar.gz"
      sha256 "b97e0a863114297bee3029bc34122592aed0e80cbb0e19f15b61b2a5f559a40d"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
