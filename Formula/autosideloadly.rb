class Autosideloadly < Formula
    desc "AutoSideloadly is a tool that allows you to automatically sideload IPA files to your iOS device using Sideloadly"
    homepage "https://github.com/terryso/AutoSideloadly"
    url "https://github.com/terryso/homebrew-AutoSideloadly/archive/refs/tags/0.0.1.tar.gz"
    sha256 "eb6d4d6cdc1c5274d741316cae24bc49bf70fd3e985682f6ba3e7ee2e1bed5d1"
  
    def install
      bin.install "install_ipa.scpt"
    end

    def post_install
      system "chmod", "+x", "#{prefix}/install_ipa.scpt"
    end
  end