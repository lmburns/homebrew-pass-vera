class PassVera < Formula
  desc "Pass extension that encrypts the password-store in a VeraCrypt drive"
  homepage "https://github.com/lmburns/pass-vera"
  url "https://github.com/lmburns/pass-vera/archive/refs/tags/v1.2.1.tar.gz"
  version "v1.2.1"
  sha256 "9cc6aa235abc77eccde5bd528e4f17b2a992085a3caee640bfaed7c5e4bd2577"
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
