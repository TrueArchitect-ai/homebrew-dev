class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.5/dev-0.4.5-darwin-arm64.tar.gz"
      sha256 "b7731ed1c3ac15e0c820209b3caca3a2503a78c1bec449fc2f75bb7eba292f36"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.5/dev-0.4.5-darwin-amd64.tar.gz"
      sha256 "17ca2122925540859ab7ed908db39eed1fcf91917634c44c483be75e54c03230"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.5/dev-0.4.5-linux-arm64.tar.gz"
      sha256 "f82fd3edb86c93c50d61d9bf1d3d038cc505c607a08d90bb05e996178dad7e6f"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.5/dev-0.4.5-linux-amd64.tar.gz"
      sha256 "0f1c0904a71452eb170ce2d2de0f45f9c4fa66d1cca916728bf76328e6c22f72"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
