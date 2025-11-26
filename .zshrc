# if not running interactively, don't do anything
[[ $- != *i* ]] && return

#colorcoding
black='\[\e[0;30m\]'	# black
red='\[\e[0;31m\]'		# red
green='\[\e[0;32m\]'	# green
yellow='\[\e[0;33m\]'	# yellow
blue='\[\e[0;34m\]'		# blue
purple='\[\e[0;35m\]'	# purple
cyan='\[\e[0;36m\]'		# cyan
white='\[\e[0;37m\]'	# white

# bold
bblack='\[\e[1;30m\]'	# black
bred='\[\e[1;31m\]'		# red
bgreen='\[\e[1;32m\]'	# green
byellow='\[\e[1;33m\]'	# yellow
bblue='\[\e[1;34m\]'	# blue
bpurple='\[\e[1;35m\]'	# purple
bcyan='\[\e[1;36m\]'	# cyan
bwhite='\[\e[1;37m\]'	# white

# Background
on_black='\[\e[40m\]'   # Black
on_red='\[\e[41m\]'     # Red
on_green='\[\e[42m\]'   # Green
on_yellow='\[\e[43m\]'  # Yellow
on_blue='\[\e[44m\]'    # Blue
on_purple='\[\e[45m\]'  # Purple
on_cyan='\[\e[46m\]'    # Cyan
on_white='\[\e[47m\]'   # White

NC='\[\e[m\]'           # Color Reset

ALERT="${BWhite}${On_Red}" # Bold White on red background

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[cyan]%}\$(git branch --show-current 2>/dev/null | sed -e 's/^/ (/;s/$/)/')%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#33c7de,bg=gray,bold"

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# User configuration

## Aliases
alias u="brew update --auto-update"
alias c='clear -x'
alias ..='cd ..'
alias ls='ls -CF --color=auto'
alias mkdir='mkdir -pv'
alias wget='wget -c'
alias myip='curl ipv4.icanhazip.com'
alias grep='grep --color=auto'
alias e="exit"
alias ll='ls -lisa --color=auto'
alias i='brew install'
alias apache='brew services start httpd'
alias apaches='brew services stop httpd'
alias apacher='brew services restart httpd'
alias redis='brew services start redis'
alias rediss='brew services stop redis'
alias redisr='brew services restart redis'
alias mongo='brew services start mongodb-community@6.0'
alias mongos='brew services stop mongodb-community@6.0'
alias mongor='brew services restart mongodb-community@6.0'
alias elastic='brew services start elastic/tap/elasticsearch-full'
alias elastics='brew services stop elastic/tap/elasticsearch-full'
alias elasticr='brew services restart elastic/tap/elasticsearch-full'
alias gcloud='/var/google-cloud-sdk/bin/gcloud'
alias charm='open -a PyCharm'

## Plugins
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  )

#Zsh Theme
# ZSH_THEME='random'

## Bullet-Train Configurations
BULLETTRAIN_PROMPT_ORDER=(
  context
  dir
  git
  status
)
BULLETTRAIN_PROMPT_CHAR=\$
BULLETTRAIN_PROMPT_ROOT=true
BULLETTRAIN_PROMPT_SEPARATE_LINE=true
BULLETTRAIN_PROMPT_ADD_NEWLINE=true
BULLETTRAIN_STATUS_EXIT_SHOW=true
BULLETTRAIN_STATUS_BG=#4b6496
BULLETTRAIN_TIME_12HR=true
BULLETTRAIN_CONTEXT_BG=#234882
BULLETTRAIN_GIT_BG=#9e48a1

## Exports

# Path to homebrew
export PATH=/opt/homebrew/bin:$PATH
# You may need to manually set your language environment
export LANG=en_US.UTF-8
# Path to oh-my-zsh.
export ZSH="$HOME/.oh-my-zsh"
# Set PATH so it includes user's private bin directories
export PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"
# Path to nvm v0.39.7
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# Path to mysql v8.0.36
export PATH="${PATH}:/usr/local/mysql/bin/"
# Path to solr v6.0.0
export PATH="$HOME/Development/solr-6.0.0/bin:$PATH"
# Path to flutter v3.22.2
export PATH="$HOME/Development/flutter/bin:$PATH"
# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

## Source Files
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $HOME/Development/google-cloud-sdk/path.zsh.inc
# source $HOME/Development/google-cloud-sdk/completion.zsh.inc

neofetch

export PATH="$PATH:$HOME/.composer/vendor/bin"
# export JAVA_HOME=$(/usr/libexec/java_home -v 11)
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

## Java for react native
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vaibhava17-pro/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vaibhava17-pro/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vaibhava17-pro/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vaibhava17-pro/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="/usr/local/bin:$PATH"

export PATH="/opt/homebrew/opt/rust/bin:$PATH"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/vaibhava17-air/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

eval "$(atuin init zsh)"
