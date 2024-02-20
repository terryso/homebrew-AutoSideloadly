class AutoSideloadly < Formula
    desc "AutoSideloadly is a tool that allows you to automatically sideload IPA files to your iOS device using Sideloadly"
    homepage "https://github.com/terryso/AutoSideloadly"
    url "https://github.com/terryso/homebrew-AutoSideloadly/archive/refs/tags/0.0.1.tar.gz"
    sha256 "fb6e26e31f7cff53efb456c1f15a70b59d6b11f5"
  
    def install
      bin.install "install_ipa.scpt"
    end
  end