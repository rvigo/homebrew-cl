# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cl < Formula
  desc "cl is a way to group all your aliases, once in a while or multiple usages
with a lot of args commands in an organized and human readable place
"
  homepage "https://github.com/rvigo/cl"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/cl/releases/download/v0.9.1/cl_0.9.1_darwin_arm64.tar.gz"
      sha256 "33b8c6084e08d66170fdb57d0ea792d05238ed2be43b84deef30860cad0b1b13"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.9.1/cl_0.9.1_darwin_amd64.tar.gz"
      sha256 "6145891a7a6bf61eab665afb1dc2c7253fc8887ef95517772205df882ec1971f"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.9.1/cl_0.9.1_linux_amd64.tar.gz"
      sha256 "b53da810945d0d7abb640980999c008abda948569354a4cc6b80b680161934d3"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/cl/releases/download/v0.9.1/cl_0.9.1_linux_arm64.tar.gz"
      sha256 "88123225d4e1978a2713d2e7b1b5d27ce7738bb39e17b88f26789628981be6b4"

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
