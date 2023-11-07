#!/bin/sh

brew install zsh ruby ack neofetch yt-dlp zsh-syntax-highlighting zsh-autosuggestions fzf vim nano python3 pip \
&& sudo gem install colorls \
&& git clone https://github.com/marlonrichert/zsh-autocomplete.git \
&& sudo mv zsh-autocomplete /usr/local/share/ \
&& cp ./.zshrc ~/.zshrc \
&& chsh -s $(which zsh)
