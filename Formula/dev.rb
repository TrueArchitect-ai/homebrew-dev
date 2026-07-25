class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.7/dev-0.4.7-darwin-arm64.tar.gz"
      sha256 "92584253b32c164954329a2b9648877e9a2d997c484493f3a9c97b24b119f860"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.7/dev-0.4.7-darwin-amd64.tar.gz"
      sha256 "e383d8ff6163c3e8ce8d073c1e15fe16a19f6aa41c4cab371b7c1a7daefbe94a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.7/dev-0.4.7-linux-arm64.tar.gz"
      sha256 "17286c9b25d3cbfdc82e75c5753e0998dd1f17c8ef5754e20f463761636dcac2"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.7/dev-0.4.7-linux-amd64.tar.gz"
      sha256 "e2bfb68f4696bc018e663f164fcb480b2349e6dcd94f264d2ab449ea1448dd54"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
