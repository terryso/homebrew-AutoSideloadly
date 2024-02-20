class Autosideloadly < Formula
    desc "AutoSideloadly is a tool that allows you to automatically sideload IPA files to your iOS device using Sideloadly"
    homepage "https://github.com/terryso/AutoSideloadly"
    url "https://github.com/terryso/homebrew-AutoSideloadly/archive/refs/tags/0.0.1.tar.gz"
    sha256 "d3557ae7e7db7dac0f52695af9e9802dc7f4768ff19075fed4b6d48f28cca412"
  
    def install
      bin.install "install_ipa"
      bin.install "install_ipa.scpt"
    end

    def post_install
      system "chmod", "+x", "#{bin}/install_ipa"
    end
  end