class CommandStorage < Formula
  include Language::Python::Virtualenv

  desc "Command-line tool to store CLI commands for quick access and usage"
  homepage "https://github.com/ashu-tosh-kumar/command-storage"
  url "https://github.com/ashu-tosh-kumar/command-storage/releases/tag/v0.1.0"
  version "0.1.0"
  sha256 "2326eeb2bf1a2332b9ff445bb96387e3f845b9d1a369079788fd0f4448385db8"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end


  test do
    # Add test code here
    system "#{bin}/your-cli-tool", "--version"
  end
end
