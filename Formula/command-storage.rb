class CommandStorage < Formula
  include Language::Python::Virtualenv

  desc "Command-line tool to store CLI commands for quick access and usage"
  homepage "https://github.com/ashu-tosh-kumar/command-storage"
  url "https://files.pythonhosted.org/packages/25/89/119cae348b1f939e3f4b8efa5c3147d7ce8e864b719daf2af40ffaf0aa93/command_storage-0.1.2.tar.gz"
  sha256 "1787d5e5b957d267a7377d715c0dce6fcb6368f840f6fc3360eb39e71c2f81e6"
  license "MIT"

  depends_on "rust" => :build
  depends_on "cmake" => :build
  depends_on "python3"

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/67/fe/8c7b275824c6d2cd17c93ee85d0ee81c090285b6d52f4876ccc47cf9c3c4/annotated_types-0.6.0.tar.gz"
    sha256 "563339e807e53ffd9c267e99fc6d9ea23eb8443c08f112651963e24e22f84a5d"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/3c/6c/5d3b1c9615726a69a9a1f992e63f8fd0a2d19ae726c15eb9154fdce48217/pydantic-2.6.3.tar.gz"
    sha256 "e07805c4c7f5c6826e33a1d4c9d47950d7eaf34868e2690f8594d2e30241f11f"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/77/3f/65dbe5231946fe02b4e6ea92bc303d2462f45d299890fd5e8bfe4d1c3d66/pydantic_core-2.16.3.tar.gz"
    sha256 "1cac689f80a3abab2d3c0048b29eea5751114054f032a941a32de4c852c59cad"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/a7/2c/4c64579f847bd5d539803c8b909e54ba087a79d01bb3aba433a95879a6c5/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end

  resource "rapidfuzz" do
    url "https://files.pythonhosted.org/packages/11/7c/36511ff0e2e5f6cce4e854dfc1974a1519929214a38a165322f38dd01a19/rapidfuzz-3.6.2.tar.gz"
    sha256 "cf911e792ab0c431694c9bf2648afabfd92099103f2e31492893e078ddca5e1a"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/9c/c9/a3e3bc667c8372a74aa4b16649c3466364cd84f7aacb73453c51b0c2c8a7/shellingham-1.4.0.tar.gz"
    sha256 "4855c2458d6904829bd34c299f11fdeed7cfefbf8a2c522e4caea6cd76b3171e"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  resource "thefuzz" do
    url "https://files.pythonhosted.org/packages/81/4b/d3eb25831590d6d7d38c2f2e3561d3ba41d490dc89cd91d9e65e7c812508/thefuzz-0.22.1.tar.gz"
    sha256 "7138039a7ecf540da323792d8592ef9902b1d79eb78c147d4f20664de79f3680"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/e1/45/bcbc581f87c8d8f2a56b513eb994d07ea4546322818d95dc6a3caf2c928b/typer-0.7.0.tar.gz"
    sha256 "ff797846578a9f2a201b53442aedeb543319466870fbe1c701eab66dd7681165"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/16/3a/0d26ce356c7465a19c9ea8814b960f8a36c3b0d07c323176620b7b483e44/typing_extensions-4.10.0.tar.gz"
    sha256 "b0abd7c89e8fb96f98db18d86106ff1d90ab692004eb746cf6eda2682f91b3cb"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmds --version")
  end
end
