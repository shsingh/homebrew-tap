class Pqscan < Formula
  desc "TLS / QUIC cipher-configuration and post-quantum readiness scanner"
  homepage "https://github.com/shsingh/pqscan"
  version "2026.01"
  url "https://github.com/shsingh/pqscan/releases/download/2026.01/pqscan-darwin-arm64"
  sha256 "532bc5f660e114b92a00dcda3e624d3c45f7686c5dd5f4507e0d9a7741711117"

  def caveats
    <<~EOS
      2026.01 is the general-availability release. Verify provenance:
      gh attestation verify.
    EOS
  end

  def install
    bin.install "pqscan-darwin-arm64" => "pqscan"
  end

  test do
    assert_match "2026.01", shell_output("#{bin}/pqscan -version")
  end
end
