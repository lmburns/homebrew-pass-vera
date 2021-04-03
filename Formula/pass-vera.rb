class PassVera < Formula
  desc "Pass extension that encrypts te password-store in a VeraCrypt drive"
  homepage "https://github.com/lmburns/pass-vera"
  url "https://github.com/lmburns/pass-vera/archive/refs/tags/v1.0.tar.gz"
  sha256 "9ef2942f2c36979d30464ca98a285bd5f910cde26d91b4a4d2a937c57f994a63"
  license "GPL-3.0"
  head "https://github.com/lmburns/pass-vera.git"

  depends_on "pass"
  depends_on "veracrypt"
  depends_on "osxfuse"
  depends_on "coreutils"
  depends_on "ripgrep"

  def install
    system "make", "PREFIX=#{prefix}", "WITH_ALLCOMP=yes", "BASHCOMPDIR=#{bash_completion}",
                   "ZSHCOMPDIR=#{zsh_completion}", "install"
    inreplace "#{bin}/pass",
              /^SYSTEM_EXTENSION_DIR=.*$/,
              "SYSTEM_EXTENSION_DIR=\"#{HOMEBREW_PREFIX}/lib/password-store/extensions\""
  end

  test do
    # none
  end
end