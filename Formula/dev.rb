class Dev < Formula
  desc "TrueArchitect local development tool executor"
  homepage "https://truearchitect.ai"
  version "0.4.9"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.9/dev-0.4.9-darwin-arm64.tar.gz"
      sha256 "7757f472e9fa0b57b1715b95527a18ff1748044b3c0c14d3a6dfe5ea467ca2ee"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.9/dev-0.4.9-darwin-amd64.tar.gz"
      sha256 "427477694e5ed5513c86a6c359d08189738f6389d44e9f39120874b9b0de0496"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.9/dev-0.4.9-linux-arm64.tar.gz"
      sha256 "689c495ae71d520d513e01f2b940957c638bae28f69f5929b1c7cb793b9974cb"
    else
      url "https://truearchitect-releases.s3.us-west-2.amazonaws.com/dev/v0.4.9/dev-0.4.9-linux-amd64.tar.gz"
      sha256 "0152892210574232454d536b90d20f2157de026e49c9aba04aaeb73bf89e0c0c"
    end
  end

  def install
    bin.install "dev"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dev --version")
  end
end
