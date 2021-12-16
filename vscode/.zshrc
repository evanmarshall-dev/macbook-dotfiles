# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/h510084/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  node
  npm
  nvm
  z
)

source $ZSH/oh-my-zsh.sh

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
# ZSH Aliases
alias zshrc="code ~/.zshrc"
alias reload="source ~/.zshrc"
# Homebrew Aliases
alias bup="brew update && brew upgrade && brew cleanup && brew doctor"
alias blist="brew list"
# GitHub Aliases
alias ga="git add ."
alias gcm="git commit -m" # Followed by message in quotes
alias gs="git status"
alias gpom="git push origin main"
alias gcb="git checkout -b"
alias gc="git clone"
alias gpu="git pull"
alias gp="git push"
# GatsbyJS Aliases
## Run gatsby new in global project folder "dev"
alias gatnew="gatsby new"
alias gatdev="gatsby develop"
# NextJS Aliases
alias nxtcna="npx create-next-app@latest"
alias nxtcnat="npx create-next-app@latest --typescript"
alias nxtdev="npm run dev"
alias nxtbuild="npm run build && npm run export"
alias nxtstart="npm run start"
# NPM Aliases
alias ni="npm install"
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nu="npm uninstall"
alias nus='npm uninstall --save'
alias nud='npm uninstall --save-dev'
alias nod='npm outdated'
alias nrb='npm rebuild'
alias nud='npm update'
alias nr='npm run'
alias nls='npm list'
alias nlsg='npm list --global'
# Yarn Aliases
alias y="yarn"
alias yi="yarn init -y"
alias ya="yarn add"
alias yr="yarn remove"
alias yad="yarn add -D"
alias yga="yarn global add"
alias ygr="yarn global remove"
alias yu="yarn upgrade"
alias ygu="yarn global upgrade"
alias yl="yarn list --depth=0"
alias ygl="yarn global list --depth=0"
alias yo="yarn outdated"
# SSH Aliases
## Generate ssh keys and save to specific filename
alias sgen="ssh-keygen -t rsa"
## Copy generated public key to host
### After ~/.ssh/ you type after [no space] the name of custom public key followed by sshUser@sshHost
alias scopy="ssh-copy-id -i ~/.ssh/"
## SSH into host to confirm connection
alias sely="ssh elysianwebdesign@elysianwebdesign.com"
alias wppl="wp plugin list"
### After plugin install type after a [space] the name of plugin followed by --activate
alias wppia="wp plugin install"
### After plugin uninstall type after a [space] the name of plugin followed by --deactivate
alias wppud="wp plugin uninstall"
alias wpul="wp user list"
## display user list in portable format (i.e. JSON)
alias wpulf="wp user list --format=json"
alias wppage="wp post list --post_type='page'"
# WP-CLI Aliases
### After --ssh=elysianwebdesign.com/ you type after [no space] the directory on the server where the WordPress install lives (i.e. home/elysianwebdesign/elysianwebdesign.com)
alias wpcronr="wp cron event run --all --ssh=elysianwebdesign.com/"
### After --ssh=elysianwebdesign.com/ you type after [no space] the directory on the server where the WordPress install lives (i.e. home/elysianwebdesign/elysianwebdesign.com)
alias wpcronl="wp cron event list --ssh=elysianwebdesign.com/"
### After --ssh=elysianwebdesign.com/ you type after [no space] the directory on the server where the WordPress install lives (i.e. home/elysianwebdesign/elysianwebdesign.com)
alias wppua="wp plugin update --all --ssh=elysianwebdesign.com/"
### After --ssh=elysianwebdesign.com/ you type after [no space] the directory on the server where the WordPress install lives (i.e. home/elysianwebdesign/elysianwebdesign.com)
alias wpcf="wp cache flush --ssh=elysianwebdesign.com/"
### After --ssh=elysianwebdesign.com/ you type after [no space] the directory on the server where the WordPress install lives (i.e. home/elysianwebdesign/elysianwebdesign.com)
alias wpcu="wp core update --ssh=elysianwebdesign.com/"

# NVM Source
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# ZSH Plugin paths
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Change Default ZSH prompt
# PROMPT='%B%F{51}%n %1~ %#'

# Powerlevel10k Source
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
