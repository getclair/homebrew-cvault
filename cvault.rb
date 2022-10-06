# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.

require_relative "lib/custom_download_strategy"

class Cvault < Formula
  desc "cvault"
  homepage "https://github.com/getclair/cvault"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getclair/cvault/releases/download/v1.0.6/cvault_1.0.6_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e56aac096dca1435682d19b48551b4ae3b18403b5910ad13c49ffc4ee6bee7ee"

      def install
        bin.install "cvault"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getclair/cvault/releases/download/v1.0.6/cvault_1.0.6_darwin_amd64.tar.gz",:using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9795c6a05d42077a104c236e1109b6dee729575db1120569f830bfc57bbae273"

      def install
        bin.install "cvault"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getclair/cvault/releases/download/v1.0.6/cvault_1.0.6_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "98fa0293ee93ce8c05662a0a2a9afd0da63afb7be2b30dd4adeb67d64ff00f11"

      def install
        bin.install "cvault"
      end
    end
  end
end
