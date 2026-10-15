class Pqscan < Formula
  desc "TLS / QUIC cipher-configuration and post-quantum readiness scanner"
  homepage "https://github.com/shsingh/pqscan"
  version "0.0.2"
  url "https://github.com/shsingh/pqscan/releases/download/v0.0.2-alpha/pqscan-darwin-arm64"
  sha256 "755f24b47a0a70e7180b602610fd54b804385a4016ad9551d743084255948885"

  def caveats
    <<~EOS
      v0.0.2 is the alpha cut (pre-milestone); the 2026.01-rc1 name is reserved
      for milestone completion. Verify provenance: gh attestation verify.
    EOS
  end

  def install
    bin.install "pqscan-darwin-arm64" => "pqscan"
  end

  test do
    assert_match "pqscan", shell_output("#{bin}/pqscan -version")
  end
end
