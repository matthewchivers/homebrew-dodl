# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dodl < Formula
  desc "A cli tool that automates the creation and organisation of structured documents using custom templates."
  homepage "https://github.com/matthewchivers/dodl"
  version "0.2.3"
  license "MIT"

  depends_on "go"

  on_macos do
    on_intel do
      url "https://github.com/matthewchivers/dodl/releases/download/v0.2.3/dodl_Darwin_x86_64.tar.gz"
      sha256 "761e7ee2f4858d2c100ddd310bbf887d54a31578ce2acb4e98454154e70fba52"

      def install
        bin.install "dodl"
      end
    end
    on_arm do
      url "https://github.com/matthewchivers/dodl/releases/download/v0.2.3/dodl_Darwin_arm64.tar.gz"
      sha256 "e54948487aa0697e14a90239a758daaba978df4f738907b3fea753ccde423c82"

      def install
        bin.install "dodl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/matthewchivers/dodl/releases/download/v0.2.3/dodl_Linux_x86_64.tar.gz"
        sha256 "16f00ce87e1cb8a9cb0826afe5135b9a384d7e34069e5158a5bb31b02d633fdb"

        def install
          bin.install "dodl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/matthewchivers/dodl/releases/download/v0.2.3/dodl_Linux_arm64.tar.gz"
        sha256 "26379c646eab824ff3b6e5f404f2ea42fbc111bb61541f9647f94bce23c1eff4"

        def install
          bin.install "dodl"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Note: This formula only supports macOS and Linux
    EOS
  end

  test do
    system "#{bin}/dodl --version"
  end
end
