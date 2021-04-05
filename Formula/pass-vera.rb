class PassVera < Formula
  desc "Pass extension that encrypts the password-store in a VeraCrypt drive"
  homepage "https://github.com/lmburns/pass-vera"
  url "https://github.com/lmburns/pass-vera/archive/refs/tags/v1.2.tar.gz"
  version "v1.2"
  sha256 "e6f4ce3ea209a67b1db341920f595b936aed20f39def0e4cea12be19edc25982"
  license "GPL-3.0"
  head "https://github.com/lmburns/pass-vera.git"

  depends_on "pass"
  depends_on "coreutils"
  depends_on "ripgrep"
  depends_on "lolcat" => :optional
  depends_on "figlet" => :optional
  depends_on "toilet" => :optional

  def install
    system "make", "PREFIX=#{prefix}", "WITH_ALLCOMP=yes", "BASHCOMPDIR=#{bash_completion}",
                   "ZSHCOMPDIR=#{zsh_completion}", "install"
  end

  test do
    #
  end
end
