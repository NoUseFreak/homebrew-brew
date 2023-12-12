# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warpdir < Formula
  desc "Warpdir is a simple command line tool to create and manage shortcuts to directories"
  homepage "https://github.com/nousefreak/warpdir"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.0/warpdir_Darwin_arm64.tar.gz"
      sha256 "586affd646427f25feb358c7806b24105901c1bc657f9b36f4f1598450bcb5fa"

      def install
        bin.install "warpdir"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.0/warpdir_Darwin_x86_64.tar.gz"
      sha256 "2e90e91a2861840e108167592c19c352422c85b27153736bc7459be49a389b06"

      def install
        bin.install "warpdir"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.0/warpdir_Linux_x86_64.tar.gz"
      sha256 "c3a6d3b74a31b2f8f7dde8668f27d09df0898055097de4df21639dddd1a85f22"

      def install
        bin.install "warpdir"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.0/warpdir_Linux_arm64.tar.gz"
      sha256 "f318c22c720c5f5b03db9169c5822acac09234f8f2cc460c1c08e3d5ca29f39f"

      def install
        bin.install "warpdir"
      end
    end
  end

  test do
    system "#{bin}/warpdir help"
  end
end
