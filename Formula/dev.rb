class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.16"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.16/dev-0.4.16-darwin-arm64.tar.gz"
      sha256 "4b00bb31bee2b5fb7ce69f957b543b47d886a526a7adf496f78339bce8d577bd"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.16/dev-0.4.16-darwin-amd64.tar.gz"
      sha256 "af5c8ead8f4bdf0d3de094d6fea4705213d751651035d366f5fa09246d51133c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.16/dev-0.4.16-linux-arm64.tar.gz"
      sha256 "4be78a49afe27f49c58ecec131ca6574fa49c46bc481da956ddbb751d831e524"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.16/dev-0.4.16-linux-amd64.tar.gz"
      sha256 "3f5d706f3191813bd991ed209440629ede30290554e56fa04b73e537f50b29fd"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
