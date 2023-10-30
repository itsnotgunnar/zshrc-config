# Greeting
echo "Think Forward."
neofetch

# Prompt
PROMPT="%F{red}┌[%f%F{cyan}%m%f%F{red}]─[%f%F{yellow}%D{%H:%M-%d/%m}%f%F{red}]─[%f%F{magenta}%d%f%F{red}]%f"$'\n'"%F{red}└╼%f%F{green}$USER%f%F{yellow}$%f"

# Path
export PATH=$PATH:/bin:$HOME/.local/bin:$HOME/.local/share:$HOME/.local/lib:/usr/share:/usr/local/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/sbin
sourceZsh(){
    source ~/.zshrc
    backupToDrive ~/.zshrc
    echo "New .zshrc sourced."
}

editZsh(){
    nano ~/.zshrc
    source ~/.zshrc
    backupToDrive ~/.zshrc
    echo "New .zshrc sourced."
}

backupToDrive(){
    cp "$1" /Users/<username>/Google\ Drive/Config/.zshrc
    echo "New .zshrc backed up to Google Drive."
}

function zsh_add_plugin() {
    PLUGIN_NAME=${1##*/}
    [[ -d $ZDOTDIR/plugins ]] || mkdir "$ZDOTDIR/plugins"
    if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
    fi
}

# Backup a file
function bak() {
  cp $1{,.bak}
}


# This function takes a string as an argument and converts it into hexadecimal form using the xxd utility, which is generally used to make a hexdump or to do the reverse. The -p option causes xxd to display the data in plain hexadecimal form. For example, using hex-encode on the string "hello" would give you "68656c6c6f", which is the hexadecimal representation of "hello"

function hex-encode()
{
  echo "$@" | xxd -p
}

# This function does the opposite of hex-encode. It takes a string of hexadecimal characters and converts it back into its original text form. Again, it uses the xxd utility, but with the -r option for reverse operation (from hexdump back to binary). For example, using hex-decode on "68656c6c6f" would give you back "hello".

function hex-decode()
{
  echo "$@" | xxd -p -r
}

# This function implements the ROT13 ("rotate by 13 places") cipher, a simple letter substitution cipher that replaces a letter with the 13th letter after it in the alphabet. ROT13 is a special case of the Caesar cipher, which was developed in ancient Rome. It's primarily used to obfuscate text rather than for serious encryption, since applying it twice gives you back the original text. For example, using rot13 on the string "hello" would give you "uryyb", and using rot13 on "uryyb" would give you back "hello".

function rot13()
{
  echo "$@" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
}

#####################################################
# Auto completion / suggestion
# Mixing zsh-autocomplete and zsh-autosuggestions
# Requires: zsh-autocomplete (custom packaging by Parrot Team)
# Jobs: suggest files / foldername / histsory bellow the prompt
# Requires: zsh-autosuggestions (packaging by Debian Team)
# Jobs: Fish-like suggestion for command history
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

##################################################
# Fish like syntax highlighting
# Requires "zsh-syntax-highlighting" from apt
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]; then
  source /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
  # Select all suggestion instead of top on result only
  zstyle ':autocomplete:tab:*' insert-unambiguous yes
  zstyle ':autocomplete:tab:*' widget-style menu-select
  zstyle ':autocomplete:*' min-input 2
  # These bindings may cause trouble, depending on your specific system
  bindkey $key[^[[A] up-line-or-history
  bindkey $key[Down] down-line-or-history
fi

# Save type history for completion and easier life
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

alias time="/usr/bin/time -f '\t%E real,\t%U user,\t%S sys,\t%K amem,\t%M mmem'"
# Display last command interminal
echo -en "\e]2;Parrot Terminal\a"
preexec () { print -Pn "\e]0;$1 - Ubuntu Terminal\a" }

skip_global_compinit=1


# Aliases

alias ls='colorls -at'
alias ld='colorls -ldt'
alias la='colorls -lat'
alias l='colorls -lat'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grep=ack

alias digitalocean="ssh digitalocean"
alias python="python3"

alias pip="pip3"
alias easy-install="easy_install-3.7"
alias config="nvim $HOME/.zshrc"
alias repos="cd $HOME/repos"
alias reload="source $HOME/.zshrc"

# Git aliases
alias gi="git init"
alias gs="git status -sbu"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gp="git push"
alias gm="git merge"
alias ga="git add ."
alias gcm="git commit -m"
alias gpl="git pull"
alias gst="git stash"
alias gstl="git stash list"
alias glg='git log --graph --oneline --decorate --all'

alias _='sudo'
alias _i='sudo -i'

# yt-dlp is a youtube-dl fork with improviments
alias ya='(){yt-dlp -x --audio-format mp3 -o "%(title)s.%(ext)s" $(pbpaste);}'

alias get-ports="netstat -tulnp | grep LISTEN"
alias get-router="ip route | grep default"
alias get-ip="hostname -I"


# Keybindings

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

# CTRL+backspace to delete word backwards
bindkey '^H' backward-kill-word

# CTRL+] to delete word forwards
bindkey '^]' kill-word

# CTRL+arrow keys to navigate by word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

autoload -Uz zrecompile
autoload -Uz compinit


# search file to open with fuzzy from .dotfiles when you press ctrl+o
# source:https://stackoverflow.com/a/65375231/2571881
# ~/.dotfiles/zsh/autoload/vif
function vif() {
    local fname
    local current_dir=$PWD
    cd ~/.dotfiles
    fname=$(fzf) || return
    vim "$fname"
    cd $current_dir
}
bindkey -s '^o' 'vif^M'

if [[ -s $dump(#qN.mh+24) && (! -s "$dump.zwc" || "$dump" -nt "$dump.zwc") ]]; then
    compinit -i d $ZSH_COMPDUMP
    zrecompile $ZSH_COMPDUMP
fi
compinit -C

# # [Space] - do history expansion
# bindkey ' ' magic-space

# # start typing + [Up-Arrow] - fuzzy find history forward
# bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search

# # start typing + [Down-Arrow] - fuzzy find history backward
# bindkey "${terminfo[kcud1]}" down-line-or-beginning-search

# Save type history for completion and easier life
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Variable Declarations

export DOTFILES="$HOME/.dotfiles"
export ZDOTFILES="${DOTFILES}/.zdotfiles"
export ZSH_COMPDUMP="${ZDOTFILES}/.zcompdump"

# API Keys

export OPENAI_API_KEY=''
export OPENAI_ORGANIZATION=''
export GITHUB_API_KEY=''
export GITHUB_USERNAME=''
export GOOGLE_API_KEY=''
export GITHUB_SSH=''
export GPG_KEY_ID=''

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

