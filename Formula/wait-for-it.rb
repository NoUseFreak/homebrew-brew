class WaitForIt < Formula
  desc "Wait for a service to become available"
  homepage "https://github.com/NoUseFreak/wait-for-it"
  url "https://github.com/NoUseFreak/wait-for-it/releases/download/0.0.10/darwin_wait-for-it"
  version "0.0.10"

  def install
    bin.install "wait-for-it"
  end
end