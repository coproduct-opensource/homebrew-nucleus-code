class NucleusCode < Formula
  desc "Coding agent with formal-methods-grade security"
  homepage "https://github.com/coproduct-opensource/nucleus-code-releases"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/coproduct-opensource/nucleus-code-releases/releases/download/v0.1.1/nucleus-code-aarch64-apple-darwin",
          using: :nounzip
      sha256 "7225fd25a949006acf17c3d8bc3ee036d0361daa5d386abefec6028e814e6269"
    end
    on_intel do
      url "https://github.com/coproduct-opensource/nucleus-code-releases/releases/download/v0.1.1/nucleus-code-x86_64-apple-darwin",
          using: :nounzip
      sha256 "fb7191663bb6d246d0f26be6fa625dd0b967658a2d918b4958ec77b58e2f6854"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/coproduct-opensource/nucleus-code-releases/releases/download/v0.1.1/nucleus-code-x86_64-unknown-linux-gnu",
          using: :nounzip
      sha256 "5ca8353dcb5a7cc30badf81b81d71948229401de1aca345b371ee5af4bb2df17"
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
