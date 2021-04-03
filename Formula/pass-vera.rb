class PassVera < Formula
  desc "Pass extension that encrypts the password-store in a VeraCrypt drive"
  homepage "https://github.com/lmburns/pass-vera"
  url "https://github.com/lmburns/pass-vera/archive/refs/tags/v1.0.tar.gz"
  version "v1.0"
  sha256 "74dca41a95de2c92c8544e4465327d80cba69bee0144860063dc227d0f187773"
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
