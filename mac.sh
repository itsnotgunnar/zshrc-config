#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
&& brew install git \
&& git clone https://github.com/itsnotgunnar/zshrc-config.git \
&& cd zshrc-config \
&& brew install zsh ruby ack neofetch yt-dlp zsh-syntax-highlighting zsh-autosuggestions fzf vim nano python3 pip \
&& sudo gem install colorls \
&& git clone https://github.com/marlonrichert/zsh-autocomplete.git \
&& sudo mv zsh-autocomplete /usr/local/share/ \
&& cp ./.zshrc ~/.zshrc \
&& chsh -s $(which zsh)