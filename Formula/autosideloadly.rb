class Autosideloadly < Formula
    desc "AutoSideloadly is a tool that allows you to automatically sideload IPA files to your iOS device using Sideloadly"
    homepage "https://github.com/terryso/AutoSideloadly"
    url "https://github.com/terryso/homebrew-AutoSideloadly/archive/refs/tags/0.0.1.tar.gz"
    sha256 "e4ab2fb026b903da7f1a26e67e16446c16f46c4ec1d1ac106f0c85a693db3ac1"
  
    def install
      bin.install "install_ipa"
      bin.install "install_ipa.scpt"
    end

    def post_install
      system "chmod", "+x", "#{bin}/install_ipa"
    end
  end