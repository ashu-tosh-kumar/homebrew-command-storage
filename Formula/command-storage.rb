class CommandStorage < Formula
  include Language::Python::Virtualenv

  desc "Command-line tool to store CLI commands for quick access and usage"
  homepage "https://github.com/ashu-tosh-kumar/command-storage"
  url "https://github.com/ashu-tosh-kumar/command-storage/releases/tag/v0.1.0"
  version "0.1.0"
  sha256 "0439326294b699ee8010a251ac4abe4e17ca0365bc9784f816d6356fac89b530"
  license "MIT"

  def install
    system "./configure", "--disable-silent-rules", *std_configure_args
  end

  test do
    false
  end
end
