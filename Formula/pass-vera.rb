class PassVera < Formula
  desc "Pass extension that encrypts the password-store in a VeraCrypt drive"
  homepage "https://github.com/lmburns/pass-vera"
  url "https://github.com/lmburns/pass-vera/archive/refs/tags/v2.1.tar.gz"
  version "v2.1"
  sha256 "6ad02d99ef1a637382b5f3cff5d1a888f16bc1794591a70249bd12b37b45dcfb"
  license "GPL-3.0"
  head "https://github.com/lmburns/pass-vera.git"

  depends_on "pass"
  depends_on "coreutils"
  depends_on "moreutils"
  depends_on "ripgrep"
  depends_on "jq" => :optional
  depends_on "yq" => :optional
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
