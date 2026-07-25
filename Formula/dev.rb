class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.10"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.10/dev-0.4.10-darwin-arm64.tar.gz"
      sha256 "3f6eed986c2972617a017cf30a9a2ff6608d129d4538a0fe7b35b13e8b68e42d"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.10/dev-0.4.10-darwin-amd64.tar.gz"
      sha256 "19583e80c4b693b74a2e9e95fbb3dc7cb7ae29903e2b237c13c32f599a7a2e28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.10/dev-0.4.10-linux-arm64.tar.gz"
      sha256 "e965bf381bd38fc75b611bd07b086df9b17fc5f3e3fa57d1e1cee8516717da4e"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.10/dev-0.4.10-linux-amd64.tar.gz"
      sha256 "75392d303bc3820ec4124ead109ea19c704bfc037fbc2ce575c27f0f2bfc8613"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
