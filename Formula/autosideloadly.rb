class AutoSideloadly < Formula
    desc "AutoSideloadly is a tool that allows you to automatically sideload IPA files to your iOS device using Sideloadly"
    homepage "https://github.com/terryso/AutoSideloadly"
    url "https://github.com/terryso/AutoSideloadly/archive/refs/tags/0.0.1.tar.gz"
    sha256 "put_your_sha256_here"
  
    def install
      bin.install "install_ipa.scpt"
    end
  end