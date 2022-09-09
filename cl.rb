# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cl < Formula
  desc "cl (Command List) is a way to group all your aliases, once in a while or multiple usages
with a lot of args commands in an organized and human readable place
"
  homepage "https://github.com/rvigo/cl"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.4.0/cl_0.4.0_darwin_x86_64.tar.gz"
      sha256 "ec525c7bedef838d8f5bcf517ce9974de9a48f4479bbc6faade085d2e0888d17"

      def install
        bin.install "cl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/cl/releases/download/v0.4.0/cl_0.4.0_darwin_arm64.tar.gz"
      sha256 "6d5cb14c607c7289e11ad3d538676838537a27c4ec4103fbcbb329c2af951f55"

      def install
        bin.install "cl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/cl/releases/download/v0.4.0/cl_0.4.0_linux_x86_64.tar.gz"
      sha256 "c5ca9cb5c0dddd0ad6e52f00ca81d405b15715cc21e14e83af02585a4a212e3f"

      def install
        bin.install "cl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/cl/releases/download/v0.4.0/cl_0.4.0_linux_arm64.tar.gz"
      sha256 "15f3b29bcbe7512548d4b0ecc1cb3688a9916e81f3709ee9d86fa7443b37a817"

      def install
        bin.install "cl"
      end
    end
  end
end
