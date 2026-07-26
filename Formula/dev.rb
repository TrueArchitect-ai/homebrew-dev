class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.11"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.11/dev-0.4.11-darwin-arm64.tar.gz"
      sha256 "bd7b82267fc4fe0ae775d42316997b929aaaf2229a1d735843bdd232c9d8b98e"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.11/dev-0.4.11-darwin-amd64.tar.gz"
      sha256 "af54d45f7032f4776fec3d64b7cabc9d5b022a7d1315b8b2b9f0eef8a8ee5a67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.11/dev-0.4.11-linux-arm64.tar.gz"
      sha256 "ecb72c204c60b1973e58838f192891286a82f7a86332f6bfff644b6b41c1151f"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.11/dev-0.4.11-linux-amd64.tar.gz"
      sha256 "4817964eb1c2ef351cd58a66c0762a6400819291255fff1632974c3df60557b7"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
