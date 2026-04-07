class NucleusCode < Formula
  desc "Coding agent with formal-methods-grade security"
  homepage "https://github.com/coproduct-opensource/nucleus-code-releases"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/coproduct-opensource/nucleus-code-releases/releases/download/v0.1.0/nucleus-code-aarch64-apple-darwin",
          using: :nounzip
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/coproduct-opensource/nucleus-code-releases/releases/download/v0.1.0/nucleus-code-x86_64-apple-darwin",
          using: :nounzip
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/coproduct-opensource/nucleus-code-releases/releases/download/v0.1.0/nucleus-code-x86_64-unknown-linux-gnu",
          using: :nounzip
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary_name = Dir.glob("nucleus-code-*").first || "nucleus-code"
    bin.install binary_name => "nucleus-code"
  end

  test do
    assert_match "nucleus-code", shell_output("#{bin}/nucleus-code --version")
  end
end
