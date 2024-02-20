# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Projecthelper < Formula
  desc "Project helper tries to save time"
  homepage "https://github.com/nousefreak/projecthelper"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.5.0/projecthelper_Darwin_arm64.tar.gz"
      sha256 "55207a984e70b51cbc17b89da40b5ba0b0071b2f38246bcb5905ae865ceb8e41"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.5.0/projecthelper_Darwin_x86_64.tar.gz"
      sha256 "37d9f44c2a5ffb91d51d8ce3866a4c724e01a6d48bff5e8876fbe209fcce7941"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.5.0/projecthelper_Linux_arm64.tar.gz"
      sha256 "e7ce8df6fe8f54d031ac7afcd9d05c89f009606d368edb5313e4e4c68807f774"

      def install
        bin.install "projecthelper"
        man1.install "manpages/projecthelper.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/projecthelper/releases/download/v0.5.0/projecthelper_Linux_x86_64.tar.gz"
      sha256 "548d08f9e0c5b32af0d89122fa2364156542b27b6c6f7b134a67e7a15125a9a3"

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
