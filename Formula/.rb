# This file was generated by LetItGo.
class Letitgo < Formula
  desc "LetItGo automates releases."
  homepage "https://github.com/NoUseFreak/letitgo"

  version "0.1.13"
  url "https://github.com/NoUseFreak/letitgo/releases/download/0.1.13/darwin_amd64.zip"
  sha256 "a0b0eab7258f4df4356e5d85d87d53627afb31b3f70900fb875006de2c102af2"

  def install
    bin.install ""
  end


  test do
    system "#{bin}/ -h"
  end
end
