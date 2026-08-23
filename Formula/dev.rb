class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.19"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.19/dev-0.4.19-darwin-arm64.tar.gz"
      sha256 "637ec5f783bc2b2208db1fc54fbf3d7d211e80a751f9f2171dfe0eee48bde2db"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.19/dev-0.4.19-darwin-amd64.tar.gz"
      sha256 "8b65387208d40cc43eade7a70dfd8e009ac66c1b6839c3c27f27e4b810b7e4b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.19/dev-0.4.19-linux-arm64.tar.gz"
      sha256 "e6e1ecd098191dd1d4724d2491ed9afb4793676301791bf5d9bf0acdaaff6766"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.19/dev-0.4.19-linux-amd64.tar.gz"
      sha256 "ba4d48d3cb493847f931d13b6d3c8f1585acbfde152a6c05f0872e297fb2fc9d"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
