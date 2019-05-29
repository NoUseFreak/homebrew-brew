class Sops64 < Formula
  desc "Sops wrapper that does base64 encoding and decoding for you."
  homepage "https://github.com/NoUseFreak/sops64"
  url "https://github.com/NoUseFreak/sops64/releases/download/0.1.3/darwin_386.tar.gz"
  version "0.1.3"

  def install
    bin.install "sops64"
  end
end