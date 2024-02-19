# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Projecthelper < Formula
  desc "Project helper tries to save time"
  homepage "https://github.com/nousefreak/projecthelper"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.4.0/projecthelper_Darwin_x86_64.tar.gz"
      sha256 "2a979cca24d777180abf0675f98ba4b33f9f623f3bfe3f305d06143d59f4e537"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.4.0/projecthelper_Darwin_arm64.tar.gz"
      sha256 "62a11fecee2b60a86c0930f9c9e08e9f7205fd1b7cd53e656dae65154b47c3df"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.4.0/projecthelper_Linux_arm64.tar.gz"
      sha256 "7165d9b14ed36ef4256122a31658d45fd684930a3fd30ce8dc2a5cc481c7e8b6"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.4.0/projecthelper_Linux_x86_64.tar.gz"
      sha256 "58a44310b6f7783aef17ca7ea8e4f3a8b050cbdc34738cac08bde0ed7818a183"

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
