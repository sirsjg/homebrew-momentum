class Momentum < Formula
  desc "Lightweight CLI for managing Flux agents"
  homepage "https://github.com/sirsjg/momentum"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sirsjg/momentum/releases/download/v0.1.0/momentum-darwin-arm64"
    sha256 "SHA256_PLACEHOLDER"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sirsjg/momentum/releases/download/v0.1.0/momentum-darwin-amd64"
    sha256 "SHA256_PLACEHOLDER"
  elsif OS.linux?
    url "https://github.com/sirsjg/momentum/releases/download/v0.1.0/momentum-linux-amd64"
    sha256 "SHA256_PLACEHOLDER"
  end

  def install
    bin.install "momentum"
  end

  test do
    system "#{bin}/momentum", "--version"
  end
end
