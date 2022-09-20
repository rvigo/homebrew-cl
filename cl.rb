# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cl < Formula
  desc "cl (Command List) is a way to group all your aliases, once in a while or multiple usages
with a lot of args commands in an organized and human readable place
"
  homepage "https://github.com/rvigo/cl"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.4.5/cl_0.4.5_darwin_x86_64.tar.gz"
      sha256 "1dfdffa735b78eb67b4f3bdfbce37f798aaca7f4ecd96cf678a827ab72529c93"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/cl/releases/download/v0.4.5/cl_0.4.5_darwin_arm64.tar.gz"
      sha256 "c1ec3afe345a42272cdf2f0a774a82a0217b34a59be37ff04cffc0e252ce8c7b"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/cl/releases/download/v0.4.5/cl_0.4.5_linux_arm64.tar.gz"
      sha256 "e23f54300c7058474777fb020645e8255de14a08e7b0f352f31c9fc8f9abf535"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.4.5/cl_0.4.5_linux_x86_64.tar.gz"
      sha256 "22c3770b8ef64c02a3d14bdd9c692cf422c837b2c02b7c7c889575a0a290c6fb"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
  end

  def caveats
    <<~EOS
      In order to get cl completion (only available for ZSH shell),
      be sure that $(brew --prefix)/share/zsh/site-functions is present in $FPATH.
      If not, add the following line to your ~/.zshrc, BEFORE any call to compinit:
      FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
    EOS
  end
end
