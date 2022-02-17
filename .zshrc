# Path to your oh-my-zsh installation.
export ZSH=/Users/paulyhedral/.oh-my-zsh

#ZSH_THEME="mh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(z git brew npm colorize command-not-found github git-flow jsontools macos pip rsync virtualenv chucknorris)

# User configuration

export PATH="$HOME/.binenv:$HOME/bin/istio-1.12.1/bin:/usr/local/texlive/2017/bin/x86_64-darwin:$HOME/bin:$HOME/.krew/bin:$HOME/.cargo/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR="code-insiders -n -w"
#export EDITOR="/usr/local/bin/nova -w"

export HOMEBREW_GITHUB_API_TOKEN=$(cat $HOME/.github-api-token.txt)
export PARADOX_GITHUB_TOKEN=$(cat $HOME/.paradox-github-token.txt)
export FLUX_GITHUB_TOKEN=$(cat $HOME/.flux-github-token.txt)
export CURSEFORGE_API_KEY=$(cat $HOME/.curseforge-api-key.txt)

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"
eval "$(binenv completion zsh)"
eval "$(kubecm completion zsh)"

export FG_HOME="${HOME}/SmiteWorks/Fantasy Grounds"

# Aliases

alias fgclient="open -n -b 'unity.SmiteWorks.Fantasy Grounds'"
alias workdir="cd $HOME/Work/CarLabs/Home"
alias workrepos="cd $HOME/Work/CarLabs/Repos/CarLabs"
alias firefox="/Applications/Firefox.app/Contents/MacOS/firefox-bin -P"
alias codeterraform="code-insiders $HOME/Work/Repos/CarLabs/terraform"
alias devdir="cd $HOME/Dev/Code"
alias mcdir="open $HOME/Minecraft/Profiles/Paul"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# emacs --daemon -q

#eval "$(zoxide init zsh)"
eval "$(anyenv init -)"
eval "$(starship init zsh)"
#eval "$(swift package completion-tool generate-zsh-script)"
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/history.zsh
eval "$(/usr/libexec/path_helper)"

#export GOPATH=${HOME}/Dev/Code/Go
#echo $GOPATH
unset GOPATH
#go env -w GOPATH=$(goenv prefix)
export GOPATH=$(goenv prefix)

# These are here because python-build chokes otherwise
#sdkinfo=$(xcodebuild -showsdks -json | jq -j '.[] | select(.displayName | startswith("macOS"))')
#export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX11.1.sdk
export SDKROOT=$(echo $sdkinfo | jq -j '.sdkPath')
#export MACOSX_DEPLOYMENT_TARGET=11.0
export MACOSX_DEPLOYMENT_TARGET=$(echo $sdkinfo | jq -j '.sdkVersion')
export PYTHON_CONFIGURE_OPTS="--enable-framework"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

export KUBECONFIG=~/.kube/sweetrpg.config

