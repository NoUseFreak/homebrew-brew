# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warpdir < Formula
  desc "Warpdir is a simple command line tool to create and manage shortcuts to directories"
  homepage "https://github.com/nousefreak/warpdir"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.1/warpdir_Darwin_arm64.tar.gz"
      sha256 "fccd7753d31e869e4bc69545f2297555243fb9184987f8cfb8121ab8f3dccb2d"

      def install
        bin.install "warpdir"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.1/warpdir_Darwin_x86_64.tar.gz"
      sha256 "422129eab6e4e04ddf92f996e62cd1bb0afc6468544891dbc2697b0af8f9d53b"

      def install
        bin.install "warpdir"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.1/warpdir_Linux_arm64.tar.gz"
      sha256 "9a61a789e9d8bf17dbe9d83fb8e22df1d5011b7c8fd81afd7e67d3e0ab1fb259"

      def install
        bin.install "warpdir"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.1/warpdir_Linux_x86_64.tar.gz"
      sha256 "67bc5f6e9d0b3d12a60d3f5805536c8843dbeacbccc408f21bb1453657d37597"

      def install
        bin.install "warpdir"
      end
    end
  end

  test do
    system "#{bin}/warpdir help"
  end
end