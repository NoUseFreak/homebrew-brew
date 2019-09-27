
class Gitteams < Formula
  desc "Generic release helper"
  homepage "https://github.com/NoUseFreak/release"

  version "0.1.10"
  url "https://github.com/NoUseFreak/gitteams/releases/download/0.1.10/darwin_amd64.zip"
  sha256 "fbbc723da0f55cad8651e626d0fb7c2032f947b25a6e20f350441bf6ce619da8"

  def install
    bin.install "gitteams"
  end


  test do
    system "#{bin}/gitteams -h"
  end
end
