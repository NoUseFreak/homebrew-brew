class Sawsh < Formula
  desc "SSH wrapper for aws to make your life easier"
  homepage "https://github.com/NoUseFreak/sawsh"
  url "https://github.com/NoUseFreak/sawsh/releases/download/0.2.3/darwin_amd64.tar.gz"
  version "0.3.4"
  
  def install
    bin.install "sawsh"
  end
  
  test do
    system "#{bin}/sawsh", "-h"
  end
end