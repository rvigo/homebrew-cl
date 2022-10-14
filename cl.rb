# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cl < Formula
  desc "cl is a way to group all your aliases, once in a while or multiple usages
with a lot of args commands in an organized and human readable place
"
  homepage "https://github.com/rvigo/cl"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/cl/releases/download/v0.5.0/cl_0.5.0_darwin_arm64.tar.gz"
      sha256 "0a62d5c1c2432cab6245b4cd76c22b07ce1decec7a76d7007ff7c067d8508292"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.5.0/cl_0.5.0_darwin_x86_64.tar.gz"
      sha256 "02b7a7e2f447b676b6fa576197063d6effb325daafeb80e16ea79c128b87a44f"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.5.0/cl_0.5.0_linux_x86_64.tar.gz"
      sha256 "67c3d5926e4ceff2d249f30c285a5871888fba1dbf1ba59928a32d2bbce72846"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/cl/releases/download/v0.5.0/cl_0.5.0_linux_arm64.tar.gz"
      sha256 "9f350e53c0daec9e0e5b97ffd4ef8b778943b73e11a2689f7598b6569b8b0771"

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
