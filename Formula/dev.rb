class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.15"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.15/dev-0.4.15-darwin-arm64.tar.gz"
      sha256 "164540447bfe7eaad6515b1a451fe8500c290987ab745eacda4032dc2049db1f"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.15/dev-0.4.15-darwin-amd64.tar.gz"
      sha256 "75a76784a7443bf0b5b786eba199f0aae015bfee8f8fcd294b2c0ba5444c43a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.15/dev-0.4.15-linux-arm64.tar.gz"
      sha256 "b523a71d534c22ddc84aaf08fb9db3ebb68d6a140d46c7b149f7383d99f058d1"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.15/dev-0.4.15-linux-amd64.tar.gz"
      sha256 "6f26328f86fa1ecbdf971d25063303bb6f88aab3cf06867c2941e7c3bac3fefc"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
