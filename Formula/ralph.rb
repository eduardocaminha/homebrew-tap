class Ralph < Formula
  desc "Autonomous Claude Code loop driver — TUI dashboard + 4-mode resume"
  homepage "https://github.com/eduardocaminha/ralph-cli"
  url "https://github.com/eduardocaminha/ralph-cli/releases/download/v0.1.0/ralph-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "d77fb8c627296eee3a41b71b05ae935674a494ecbd72d3c3507326c9950d1294"
  license "MIT"

  livecheck do
    url "https://github.com/eduardocaminha/ralph-cli/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end

  # v0.1.0 ships only darwin-arm64. Linux + Intel-Mac builds will land in a
  # later release once a contributor surfaces a need; until then, fail fast
  # on unsupported platforms rather than serve a wrong-arch binary.
  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ralph"
    doc.install "LICENSE"
  end

  test do
    assert_match(/\Aralph #{Regexp.escape(version.to_s)}\n\z/, shell_output("#{bin}/ralph --version"))
  end
end
