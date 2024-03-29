# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH":"~/.pub-cache/bin"

# Path to your oh-my-zsh installation.
export ZSH="/Users/pkrishnasamy/.oh-my-zsh"

# Tmux initialization
#
# If tmux is installed and available to the current shell, run new-session with
# the -A flag; this will force tmux to attach to the named session if it exists,
# or create it if it doesn't. This ensures that I always start in a session with
# the specified name.
################################################################################
#if command -v tmux > /dev/null 2>&1 && [ -z "${TMUX+x}" ] && [ ! "$UID" -eq 0 ]; then
#    tmux new-session -A -s main
#fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="avit"
ZSH_THEME="agnoster"
#ZSH_THEME="bullet-train"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git kubectl docker kops helm terraform kube-ps1 zsh-autosuggestions history-substring-search)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

# PROMPT="%{$fg_bold[white]%}%n %{$fg[blue]%}"
#PROMPT=" %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

#PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_current_branch)'

#PROMPT='%{$fg[yellow]%}[%D{%f/%m/%y} %D{%L:%M:%S}] '$PROMPT
PROMPT=$PROMPT'$(kube_ps1)' 

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Skip forward/back a word with opt-arrow
bindkey '[C' forward-word
bindkey '[D' backward-word
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# load zgen
#source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
#if ! zgen saved; then
#
  # specify plugins here
 # zgen oh-my-zsh

  # generate the init script from plugins above
 # zgen save
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export GOPATH=$HOME/go

# ALIASES
################################################################################

alias ..=../
alias ...=../../
alias ....=../../../
alias b='bazel'
alias diff='diff -urN --color'
alias dls="dirs -v"
alias gpgl="gpg --list-keys --keyid-format long --with-fingerprint"
alias gpgll="gpg --list-keys --keyid-format long --with-fingerprint --with-subkey-fingerprint"
alias kc='kubectx'
alias kn='kubens'
alias ku='kubectl'
alias pass='gopass'
alias reload=". ~/.zshrc"
alias se='sudoedit'
alias tf='terraform'
# Alias to go to the workspace folder
alias wspk="cd /Users/pkrishnasamy/go/src/github.com/poornima-krishnasamy"
alias wsmoj="cd /Users/pkrishnasamy/go/src/github.com/ministryofjustice"



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/curl-openssl/bin/:$PATH"
