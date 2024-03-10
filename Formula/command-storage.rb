class CommandStorage < Formula
  include Language::Python::Virtualenv

  desc "Command-line tool to store CLI commands for quick access and usage"
  homepage "https://github.com/ashu-tosh-kumar/command-storage"
  url "https://github.com/ashu-tosh-kumar/command-storage/releases/tag/v0.1.0"
  version "0.1.0"
  sha256 "93defcb5addf53454689e79a8d5a907b5b93550d3185a3d1fb66c00c934036ef"
  license "MIT"

  def install
    system "./configure", "--disable-silent-rules", *std_configure_args
  end

  test do
    false
  end
end
