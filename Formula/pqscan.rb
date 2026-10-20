class Pqscan < Formula
  desc "TLS / QUIC cipher-configuration and post-quantum readiness scanner"
  homepage "https://github.com/shsingh/pqscan"
  version "2026.01-rc3"
  url "https://github.com/shsingh/pqscan/releases/download/2026.01-rc3/pqscan-darwin-arm64"
  sha256 "255d81f378929b07c45d0e400bf88784a1918021e956f88326c6e67eee41ef42"

  def caveats
    <<~EOS
      2026.01-rc3 is a release candidate (rc-style names track the
      YYYY.01 progress cuts). Verify provenance: gh attestation verify.
    EOS
  end

  def install
    bin.install "pqscan-darwin-arm64" => "pqscan"
  end

  test do
    assert_match "2026.01-rc3", shell_output("#{bin}/pqscan -version")
  end
end
