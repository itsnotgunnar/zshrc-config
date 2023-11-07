# zshrc-config

Welcome to the `zshrc-config` repository, your one-stop solution to supercharge your Zsh shell experience. This repository is home to a meticulously crafted `.zshrc` configuration file that aims to streamline your command-line workflow, enhance functionality, and introduce a touch of personal flair to your terminal.

![image](zshrc-example.png)

## Features

Our `.zshrc` configuration file is packed with a plethora of features designed to optimize your terminal usage:

- ***Custom Greeting & System Info**: Start each terminal session with an uplifting message and immediate system insights via `neofetch`.

- **Enhanced Prompt**: Experience a vibrant, information-rich prompt that includes your machine name, current time, and working directory.

- **Optimized Path Management**: Enjoy a pre-configured `PATH` that ensures your scripts and executables are always within reach.

- **Effortless Configuration Management**: Utilize built-in functions to source, edit, and backup your `.zshrc` file directly to Google Drive.

- **Plugin Management**: Easily add Zsh plugins to extend the shell's capabilities without hassle.

- **Backup Utility**: Safeguard your important files with a simple backup function.

- **Text Manipulation**: Encode and decode hexadecimal strings, and apply the ROT13 cipher, all within the comfort of your terminal.

- **Auto-completion & Suggestions**: Leverage intelligent auto-completion and command suggestions to reduce typing and avoid mistakes.

- **Syntax Highlighting**: Benefit from real-time command syntax highlighting for improved readability and error detection.

- **Extensive History Management**: Keep a comprehensive record of your command history for quick retrieval and execution.

- **Aliases & Keybindings**: Save time with a suite of aliases for common commands and intuitive keybindings for efficient navigation.

- **API Key Management**: Securely store and manage your API keys within the environment.

## Installation

### Linux

To use this configuration on a Linux system, follow these steps:

1. Make sure that you have git installed
   ```sh
   sudo apt install git
   ```

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
   chmod +x mac.sh
   ```

6. Run the script, which will install all of the necessary packages and repos on your system (excluding conda), as well as set Zsh as your default terminal.
   ```sh
   ./mac.sh
   ```

7. Restart your computer, or run the new .zshrc file to get instant access to the new terminal.
   ```sh
   zsh
   ```

## Customization

The `.zshrc` file is designed to be flexible and customizable to fit your personal preferences and needs. Here are some areas you can tailor:

- **Google Drive Backup**: Customize the `backupToDrive` function with your Google Drive path to seamlessly backup your `.zshrc` file.

- **Plugin Directory**: Set the `ZDOTDIR` variable to your preferred plugin storage location for easy plugin management.

- **API Keys**: Replace placeholder values with your actual API keys to integrate with various services seamlessly.

## Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to fork the repository, make your changes, and submit a pull request. Together, we can make `zshrc-config` even better.

## License

This project will be licensed under the MIT License, once it is more comprehensive and worth doing.

## Acknowledgments

A special thanks to all the developers and contributors of the Zsh plugins and tools used in this configuration. Your work is greatly appreciated by the community.
