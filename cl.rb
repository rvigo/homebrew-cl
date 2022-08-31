# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cl < Formula
  desc "cl (Command List) is a way to group all your aliases, once in a while or multiple usages
with a lot of args commands in an organized and human readable place
"
  homepage "https://github.com/rvigo/cl"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.3.0/cl_0.3.0_darwin_x86_64.tar.gz"
      sha256 "e89baaec5180f17b7c9f87e2234e9d8018e436d28ae5e7def1cafc60eb3b0384"

      def install
        bin.install "cl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/cl/releases/download/v0.3.0/cl_0.3.0_darwin_arm64.tar.gz"
      sha256 "c6bb672c2ec3261b4c9211be0d84c8bf5b25f79bf477dc28dfe415aec889f2f9"

      def install
        bin.install "cl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.3.0/cl_0.3.0_linux_x86_64.tar.gz"
      sha256 "ff1ae1100901efe0c6d1d10edf8a200bc6c326b754f0815fd18831228ec17c75"

      def install
        bin.install "cl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/cl/releases/download/v0.3.0/cl_0.3.0_linux_arm64.tar.gz"
      sha256 "1f9101ceb3680ea96988fe832cece85147ff84a2d0aed0a69c6fdaee1057e016"

      def install
        bin.install "cl"
      end
    end
  end
end
