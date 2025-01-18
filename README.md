# homebrew-command-storage

This is homebrew recipe to install
[command-storage](https://github.com/ashu-tosh-kumar/command-storage) using Homebrew.

## To locally build the formula

- Create a temporary virtual environment. Use python version as mentioned in
  [command-storage](https://github.com/ashu-tosh-kumar/command-storage) `pyproject.toml`
  file. `pyenv virtualenv 3.9 temp`.
- Activate the above created environment: `pyenv shell temp`.
- Install Command Storage and homebrew-pypi-poet: `pip install command-storage homebrew-pypi-poet`.
- Run to generate the formula: `poet -f command-storage > command-storage.rb`.
- To test the formula: `HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source --verbose --debug command-storage.rb`.

## How to Install

```bash
brew tap ashu-tosh-kumar/command-storage
brew install command-storage
```

## Release History

Checkout the [Project Repository Release History](https://github.com/ashu-tosh-kumar/command-storage/tree/main?tab=readme-ov-file#release-history).

## Credits

- [Packaging a Python CLI tool for Homebrew](https://github.com/simonw/til/blob/main/homebrew/packaging-python-cli-for-homebrew.md).
- [homebrew-pypi-poet](https://github.com/tdsmith/homebrew-pypi-poet)
- Forever awesome [HomeBrew](https://brew.sh/).
- [ChatGPT](https://chat.openai.com/) for helping with some bugs with the ruby formula.
