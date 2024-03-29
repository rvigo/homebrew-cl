# typed: false
# frozen_string_literal: true

class Cl < Formula
  desc "cl is a way to group all your aliases, once in a while or multiple usages
with a lot of args commands in an organized and human readable place
"
  homepage "https://github.com/rvigo/cl"
  version "0.9.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/cl/releases/download/v0.9.4/cl_0.9.4_aarch64-apple-darwin.tar.gz"
      sha256 "d64caccb8efd36ad5053a5e94f7e3f940a3e376ba213fcbc6001ee23870d0576"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.9.4/cl_0.9.4_x86_64-apple-darwin.tar.gz"
      sha256 "7498dab4cd76140492e709c2ced2b8f11dd62dd884d48d225353b358d5015503"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/cl/releases/download/v0.9.4/cl_0.9.4_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ce14ce19bc4e7d7e014e905d42c29738675bb0c6084a4e058b2622a02f47fe7"

      def install
        bin.install "cl"
        zsh_completion.install "completions/zsh/_cl" => "_cl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.9.4/cl_0.9.4_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0f331b13adb9494e564344ade6544672f70f90bd2f16b6e13bde4cdeeb3c418"

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
