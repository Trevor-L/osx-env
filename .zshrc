# Path to your oh-my-zsh installation.
export ZSH=/Users/trevor/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=2

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git maven gradle pj aws zsh-syntax-highlighting docker kubectl yarn gh)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Users/trevor/Projects/scripts/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

export JAVA_HOME=$(/usr/libexec/java_home)
export GRADLE_HOME=/usr/local/opt/gradle/libexec
export EDITOR='vim'
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"


# pj plugin support
export PROJECT_PATHS=(~/Projects  ~/Projects/java ~/Projects/node ~/Projects/golang)

eval "$(scmpuff init -s)"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

alias cl="clear"
cdDev  () { cd ~/Projects/"${1:-.}"; }

alias startDynmo="dynamodb-local --sharedDb"
alias gcb="gradle clean build"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

export KUBE_EDITOR="code --wait"
export KUBECONFIG="$HOME/.kube/config"
export PATH="$PATH:${KUBECONFIG}"
alias k='kubectl'
alias kx='k explain'
alias kd='k describe'
alias kdd='k describe deployment'
alias kdp='k describe pod'
alias kdrc='k describe rc'
alias kds='k describe service'
alias kl='k logs'
alias klf='k logs -f'
alias ke='k edit'
alias ked='k edit deployment'
alias kes='k edit service'
alias ka='k apply -f'
alias kg='k get'
alias kgp='k get pods'
alias kgd='k get deployments'
alias kgs='k get service'

NPM_PACKAGES=/Users/trevor/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

export PATH="$PATH:`yarn global bin`"
