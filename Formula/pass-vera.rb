class PassVera < Formula
  desc "Pass extension that encrypts the password-store in a VeraCrypt drive"
  homepage "https://github.com/lmburns/pass-vera"
  url "https://github.com/lmburns/pass-vera/archive/refs/tags/v1.0.tar.gz"
  version "v1.0"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
