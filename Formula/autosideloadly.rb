class Autosideloadly < Formula
    desc "AutoSideloadly is a tool that allows you to automatically sideload IPA files to your iOS device using Sideloadly"
    homepage "https://github.com/terryso/AutoSideloadly"
    url "https://github.com/terryso/homebrew-AutoSideloadly/archive/refs/tags/0.0.1.tar.gz"
    sha256 "23f0dad860b3aa4d8c3a1d9294b297c686d29c26751724462b94cfa4616dd58f"
  
    def install
      bin.install "install_ipa"
      bin.install "install_ipa.scpt"
    end

    def post_install
      system "chmod", "+x", "#{bin}/install_ipa"
    end
  end