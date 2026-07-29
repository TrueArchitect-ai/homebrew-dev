class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.14"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.14/dev-0.4.14-darwin-arm64.tar.gz"
      sha256 "9305bd04463fed26cc6ddc3bbd0da8e8ff9da103e3101f0443cb0907d590480a"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.14/dev-0.4.14-darwin-amd64.tar.gz"
      sha256 "9c812986cfa202aba3f677aab8abd5b1018689800a572c359f8978c3ebef0381"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.14/dev-0.4.14-linux-arm64.tar.gz"
      sha256 "086cd17095996a4adaddaca0dd80ae0fcdbf9a12388f2856bdec44b8b31220bd"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.14/dev-0.4.14-linux-amd64.tar.gz"
      sha256 "09faf9bb3680a659df516ad6366bf439f443678a8f483b061efb17ee633a0709"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
