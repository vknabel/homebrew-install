# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Puffery < Formula
  desc ""
  homepage ""
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vknabel/go-puffery/releases/download/v0.1.0/go-puffery_0.1.0_Darwin_arm64.tar.gz"
      sha256 "a3e3af989a4db15bc31c12025ef33f6765a33b7d42556ace93f2a30870ff2920"

      def install
        bin.install "puffery"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vknabel/go-puffery/releases/download/v0.1.0/go-puffery_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "e693d9bb52e6856880fc25f2ab3024782944cea4377b27cf117b61f2d3ba61b5"

      def install
        bin.install "puffery"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vknabel/go-puffery/releases/download/v0.1.0/go-puffery_0.1.0_Linux_arm64.tar.gz"
      sha256 "3ab22886d1de422bc11ce4e6294917883a99516388a31b3fa1b5c56b5adaca9b"

      def install
        bin.install "puffery"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vknabel/go-puffery/releases/download/v0.1.0/go-puffery_0.1.0_Linux_x86_64.tar.gz"
      sha256 "4cc8c6fa377cede8ad7b182a8aad1088cfc566fe54f432c86be125f1febe4e4a"

      def install
        bin.install "puffery"
      end
    end
  end
end