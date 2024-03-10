class CommandStorage < Formula
  include Language::Python::Virtualenv

  desc "Command-line tool to store CLI commands for quick access and usage"
  homepage "https://github.com/ashu-tosh-kumar/command-storage"
  url "https://github.com/ashu-tosh-kumar/command-storage/releases/tag/v0.1.0"
  version "0.1.0"
  sha256 "2326eeb2bf1a2332b9ff445bb96387e3f845b9d1a369079788fd0f4448385db8"
  license "MIT"

  def install
    system "./configure", "--disable-silent-rules", *std_configure_args
  end

  test do
    false
  end
end
