# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cl < Formula
  desc "cl (Command List) is a way to group all your aliases, once in a while or multiple usages
with a lot of args commands in an organized and human readable place
"
  homepage "https://github.com/rvigo/cl"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.3.7/cl_0.3.7_darwin_x86_64.tar.gz"
      sha256 "578a6f4e60b63f8141e3affcf689ca58b76296450495ded3937cd73182fcd568"

      def install
        bin.install "cl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/cl/releases/download/v0.3.7/cl_0.3.7_darwin_arm64.tar.gz"
      sha256 "6b6f446a8a9dd886140d6100234e782bd3f0f514eee05070e7bf4f37cadc9a68"

      def install
        bin.install "cl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/cl/releases/download/v0.3.7/cl_0.3.7_linux_arm64.tar.gz"
      sha256 "f87bfde996fc084fa80faa88757913b0952e1d58b140365ba172e370c1776305"

      def install
        bin.install "cl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.3.7/cl_0.3.7_linux_x86_64.tar.gz"
      sha256 "509e5ab73ff3e7fdabab128b4332076c6d86a1c0db4a4b08a018a554ee0f8b2c"

      def install
        bin.install "cl"
      end
    end
  end
end
