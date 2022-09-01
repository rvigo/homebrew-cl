# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cl < Formula
  desc "cl (Command List) is a way to group all your aliases, once in a while or multiple usages
with a lot of args commands in an organized and human readable place
"
  homepage "https://github.com/rvigo/cl"
  version "0.3.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/cl/releases/download/v0.3.8/cl_0.3.8_darwin_arm64.tar.gz"
      sha256 "e5b1f59eaa412df56cdae2ea3eae4d6126a92cf4c73d7b7a6bdb055bd8b667b5"

      def install
        bin.install "cl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.3.8/cl_0.3.8_darwin_x86_64.tar.gz"
      sha256 "c365fa8c49c9ac15324f65a5ac36a1d3f767d195bf1edb0c1dc85f58a3157d02"

      def install
        bin.install "cl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.3.8/cl_0.3.8_linux_x86_64.tar.gz"
      sha256 "ebbfd27663be535aab9567f819227897c74673221baa2eecefb3ab2ce271ed99"

      def install
        bin.install "cl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/cl/releases/download/v0.3.8/cl_0.3.8_linux_arm64.tar.gz"
      sha256 "e28a01abe14dcbb01d08b2b767771a91c755398491093902db9ffa95c56f23a3"

      def install
        bin.install "cl"
      end
    end
  end
end
