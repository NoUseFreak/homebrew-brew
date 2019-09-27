
class Release < Formula
  desc "GitTeams gives you insight into multiple repositories at once."
  homepage "https://github.com/NoUseFreak/release"

  version "0.1.1"
  url "https://github.com/NoUseFreak/release/releases/download/0.1.1/darwin_amd64.zip"
  sha256 "8a0f26348b6a0d800f4cd0d3ecb9d3a37212c8f1f57e1c92e0849778673b705c"

  def install
    bin.install "release"
  end


  test do
    system "#{bin}/release -h"
  end
end
