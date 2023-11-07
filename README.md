# zshrc-config

This repository contains a configuration file for the Zsh shell, `.zshrc`. This configuration is designed to enhance your terminal experience, minimizing the load on the user, including useful functions, aliases, plugins, and more. 

![image](zshrc-example.png)

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

1. Make sure that you have git installed
   ```sh
   sudo apt install git
   ```, and have cloned the git repository, 'git clone https://github.com/itsnotgunnar/zshrc-config.git'.

2. Clone the `zshrc-config` repository:
   ```sh
   git clone https://github.com/itsnotgunnar/zshrc-config.git
   ```

3. Cd into the directory.
   ```sh
   cd zshrc-config
   ```

4. Ensure that ubuntu.sh has the necessary permissions.
   ```sh
   chmod +x ubuntu.sh
   ```
   
5. Run the script, which will install all of the necessary packages and repos on your system (excluding conda), as well as set Zsh as your default terminal.
   ```sh
   ./ubuntu.sh
   ```

6. Restart your computer, or run the new .zshrc file to get instant access to the new terminal.
   ```sh
   zsh
   ```

### macOS

To use this configuration on a Mac system, follow these steps:

1. Install Homebrew if it's not already installed. You can install Homebrew by running the following command in the terminal:
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. Install git using Homebrew:
   ```sh
   brew install git
   ```

3. Clone the `zshrc-config` repository:
   ```sh
   git clone https://github.com/itsnotgunnar/zshrc-config.git
   ```

4. Change directory to the cloned repository:
   ```sh
   cd zshrc-config
   ```

5. Ensure that the macOS equivalent of `ubuntu.sh` (let's call it `macos.sh`) has the necessary permissions:
   ```sh
   chmod +x macos.sh
   ```

6. Run the script, which will install all of the necessary packages and repos on your system (excluding conda), as well as set Zsh as your default terminal.
   ```sh
   ./mac.sh
   ```

7. Restart your computer, or run the new .zshrc file to get instant access to the new terminal.
   ```sh
   zsh
   ```

## Setting Up

Some parts of the configuration require additional setup:

- The `backupToDrive` function requires you to replace `<username>` with your actual username in the path to your Google Drive. This function copies the specified file to your Google Drive folder. Make sure you have Google Drive set up on your system and adjust the path in the function accordingly.

- The `zsh_add_plugin` function requires you to set `ZDOTDIR` to the directory where you want to store your Zsh plugins. This can be any directory of your choice. Once you've decided on a directory, set `ZDOTDIR` to its path like so: `export ZDOTDIR=/path/to/your/directory`.

- The configuration for auto-completion and suggestion features requires the `zsh-autosuggestions` and `zsh-autocomplete` plugins. You can install these using your package manager or manually from their GitHub repositories. For manual installation, clone the repositories into your `$ZSH_CUSTOM/plugins` directory, then add the plugins to your plugin list in your `.zshrc` file.

- The syntax highlighting configuration requires the `zsh-syntax-highlighting` plugin. You can install this using your package manager or manually from its GitHub repository. For manual installation, clone the repository into your `$ZSH_CUSTOM/plugins` directory, then add the plugin to your plugin list in your `.zshrc` file.

- The API keys at the end of the file should be replaced with your actual API keys.

- The `conda` command requires Anaconda to be installed on your system. You can download it from the [official website](https://www.anaconda.com/products/distribution) and follow the installation instructions there. For a minimal installation, consider using Miniconda instead.
