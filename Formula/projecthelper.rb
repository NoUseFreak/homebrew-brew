# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Projecthelper < Formula
  desc "Project helper tries to save time"
  homepage "https://github.com/nousefreak/projecthelper"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.1.7/projecthelper_Darwin_arm64.tar.gz"
      sha256 "23e7af540770b13540edefd7b404b295760b04091313236ae2b79a2e53958bcf"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.1.7/projecthelper_Darwin_x86_64.tar.gz"
      sha256 "7779519ba1531663fbdac2a014724987e51384f0b628b33f84c1945c4f9b314e"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.1.7/projecthelper_Linux_x86_64.tar.gz"
      sha256 "d16de383267442fef8d84f61cef7226321cd1343c51b9fa49ced313b42a9d21e"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.1.7/projecthelper_Linux_arm64.tar.gz"
      sha256 "c9460c57b31efb85da66d07f33026ae172453d14928f1eedcefc8fad7eb607a5"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
  end

  test do
    system "#{bin}/projecthelper help"
  end
end
