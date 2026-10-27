class Onenote2md < Formula
  desc "Convert Microsoft OneNote files (.one, .onetoc2, .onepkg) to Markdown"
  homepage "https://github.com/wsmontes/one-note-converter"
  url "https://github.com/wsmontes/one-note-converter/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a99f256f11c8f445417257cd58c85b61daa44e2ecbe6a022989f35d886c9d0cb"
  license "MIT"

  depends_on "rust" => :build

  def install
    # The workspace also holds the Python bindings; this installs just the CLI.
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "onenote2md", shell_output("#{bin}/onenote2md --help")
    # A file that is not a OneNote store must be rejected, not crash.
    (testpath/"not.onenote").write "nope"
    assert_match "error", shell_output("#{bin}/onenote2md header not.onenote 2>&1", 1)
  end
end
