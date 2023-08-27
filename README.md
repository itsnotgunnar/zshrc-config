# zshrc-config

This repository contains a configuration file for the Zsh shell, `.zshrc`. This configuration is designed to enhance your terminal experience with useful functions, aliases, plugins, and more. 

## Contents

The `.zshrc` configuration file includes:

- A custom greeting message and system information display using `neofetch`.
- A colorful and informative prompt.
- A custom `PATH` configuration.
- Functions for sourcing and editing the `.zshrc` file, and backing it up to Google Drive.
- A function for adding Zsh plugins.
- A function for creating a backup of a file.
- Functions for encoding and decoding hexadecimal strings.
- A function for applying the ROT13 cipher to a string.
- Configuration for auto-completion and suggestion features.
- Syntax highlighting configuration.
- History configuration.
- A large number of useful aliases for common commands.
- Keybindings for easier navigation and editing in the terminal.
- Variable declarations for dotfiles and API keys.

## Installation

### Linux

To use this configuration on a Linux system, follow these steps:

1. Ensure you have Zsh and Git installed on your system. If not, you can install them using your package manager. For example, on Ubuntu, you would use `sudo apt install zsh git`.

2. Clone this repository to your local machine using `git clone https://github.com/<username>/zshrc-config.git`.

3. Copy the `.zshrc` file to your home directory using `cp zshrc-config/.zshrc ~/.zshrc`.

4. Source the new `.zshrc` file using `source ~/.zshrc`.

### macOS

To use this configuration on a macOS system, follow these steps:

1. Ensure you have Zsh and Git installed on your system. If not, you can install them using Homebrew with `brew install zsh git`.

2. Clone this repository to your local machine using `git clone https://github.com/<username>/zshrc-config.git`.

3. Copy the `.zshrc` file to your home directory using `cp zshrc-config/.zshrc ~/.zshrc`.

4. Source the new `.zshrc` file using `source ~/.zshrc`.

## Setting Up

Some parts of the configuration require additional setup:

- The `backupToDrive` function requires you to replace `<username>` with your actual username in the path to your Google Drive.

- The `zsh_add_plugin` function requires you to set `ZDOTDIR` to the directory where you want to store your Zsh plugins.

- The configuration for auto-completion and suggestion features requires the `zsh-autosuggestions` and `zsh-autocomplete` plugins. You can install these using your package manager or manually from their GitHub repositories.

- The syntax highlighting configuration requires the `zsh-syntax-highlighting` plugin. You can install this using your package manager or manually from its GitHub repository.

- The API keys at the end of the file should be replaced with your actual API keys.
