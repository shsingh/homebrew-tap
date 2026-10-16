class Pqscan < Formula
  desc "TLS / QUIC cipher-configuration and post-quantum readiness scanner"
  homepage "https://github.com/shsingh/pqscan"
  version "2026.01-rc1"
  url "https://github.com/shsingh/pqscan/releases/download/2026.01-rc1/pqscan-darwin-arm64"
  sha256 "db965d0f4f39700d870571ad7492abe4d379ff69454a3e061031e6416a66e473"

  def caveats
    <<~EOS
      2026.01-rc1 is the milestone cut (rc-style names are reserved for
      milestone completion). Verify provenance: gh attestation verify.
    EOS
  end

  def install
    bin.install "pqscan-darwin-arm64" => "pqscan"
  end

  test do
    assert_match "2026.01-rc1", shell_output("#{bin}/pqscan -version")
  end
end
