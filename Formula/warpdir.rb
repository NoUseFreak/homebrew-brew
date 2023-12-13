# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warpdir < Formula
  desc "Warpdir is a simple command line tool to create and manage shortcuts to directories"
  homepage "https://github.com/nousefreak/warpdir"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.4/warpdir_Darwin_arm64.tar.gz"
      sha256 "f1f443b5315fa4ec4372b6015172ea83ef29ed1019b31b978115cf458c235b5d"

      def install
        bin.install "warpdir"
        bash_completion.install "completions/warpdir.bash" => "warpdir"
        zsh_completion.install "completions/warpdir.zsh" => "_warpdir"
        fish_completion.install "completions/warpdir.fish"
        man1.install "manpages/warpdir.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.4/warpdir_Darwin_x86_64.tar.gz"
      sha256 "533b4b0972aa3fd76222826e380e3a9ad00b00dacd2282e647e189efdacfae3b"

      def install
        bin.install "warpdir"
        bash_completion.install "completions/warpdir.bash" => "warpdir"
        zsh_completion.install "completions/warpdir.zsh" => "_warpdir"
        fish_completion.install "completions/warpdir.fish"
        man1.install "manpages/warpdir.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.4/warpdir_Linux_arm64.tar.gz"
      sha256 "bdad4687aa01ec4ef9fbab7e65967c665f13fba7cae033111aa9437b58403467"

      def install
        bin.install "warpdir"
        bash_completion.install "completions/warpdir.bash" => "warpdir"
        zsh_completion.install "completions/warpdir.zsh" => "_warpdir"
        fish_completion.install "completions/warpdir.fish"
        man1.install "manpages/warpdir.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/NoUseFreak/warpdir/releases/download/v0.1.4/warpdir_Linux_x86_64.tar.gz"
      sha256 "5861fa40eb783f1f56ef980a122c47365a3603e3e1c35801a949fd9289557c4c"

      def install
        bin.install "warpdir"
        bash_completion.install "completions/warpdir.bash" => "warpdir"
        zsh_completion.install "completions/warpdir.zsh" => "_warpdir"
        fish_completion.install "completions/warpdir.fish"
        man1.install "manpages/warpdir.1.gz"
      end
    end
  end

  test do
    system "#{bin}/warpdir help"
  end
end
