class Pqscan < Formula
  desc "TLS / QUIC cipher-configuration and post-quantum readiness scanner"
  homepage "https://github.com/shsingh/pqscan"
  version "2026.01-rc2"
  url "https://github.com/shsingh/pqscan/releases/download/2026.01-rc2/pqscan-darwin-arm64"
  sha256 "955980fc934baad678783361856fc6d77b97b3b536443870e3d5aebf28c3937f"

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
    assert_match "2026.01-rc2", shell_output("#{bin}/pqscan -version")
  end
end
