# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  git
  node
  npm
  nvm
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
## Create new branch
alias gcb="git checkout -b"
## Switch to branch specified after checkout
alias gsb="git checkout"
alias gc="git clone"
## Set upstream to push branch followed by name of branch
alias gus="git push --set-upstream origin"
alias gpu="git pull"
alias gp="git push"
alias gcache="git config --global credential.helper cache --timeout=3600"
## Run following when adding local repo to remote
## For grao make sure you add URL for remote repo and edit to @dgit or whichever github account you use
alias grao="git remote add origin"
alias gbm="git branch -M main"
alias gpuom="git push -u origin main"
# WP-CLI Aliases
alias wpi="brew install wp-cli"
alias wpc="wp core download"
alias wps="wp server"
alias wpmysql="mysql -uroot"
alias wpmysqls="brew services start mysql"
alias wpmysqlrs="brew services restart mysql"
alias wppass"mysql_secure_installation"
# Within MySQL Aliases
## alias dcreate="CREATE DATABASE `mycooldb` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
## alias dshow="SHOW DATABASES;"
## alias dexit="exit;"
# Docker aliases for Synology (non-root)
## Replace username@IPaddress with your own as well as port
alias pserver="ssh gingaranga@192.168.4.27 -p34"
alias di="sudo docker images"
alias dcu="sudo docker-compose up -d"
alias dc="sudo docker container ls -a"
alias dsc="sudo docker stop"
alias drc="sudo docker rm"
alias dri="sudo docker rmi"
alias dcd="sudo docker compose down"
alias dpa="sudo docker system prune -a"
# NextJS Aliases
## Add name of project after nxtcna or nxtcnat
alias nxtcna="yarn create next-app"
alias nxtcnat="yarn create next-app --typescript"
alias nxtdev="yarn dev"
alias nxtbuild="yarn build && yarn export"
alias nxtstart="yarn start"
alias nxtlint="yarn lint"
# NPM Aliases
alias ni="npm install"
alias nid='npm install --save-dev'
alias nu="npm uninstall"
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
alias yei="yarn eslint --init"
# Husky Aliases
alias hi="npx husky-init && yarn"
alias hpc="npx husky set .husky/pre-commit 'yarn lint'"
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
# php w/ Remote Containers Aliases
alias phps="php -S 0.0.0.0:5000"

# Remove system and username from terminal and change prompt
prompt_context() {
  # Custom (Random emoji)
  emojis=("⚡️" "🔥" "💀" "👑" "😎" "🐸" "🐵" "🦄" "🌈" "🍻" "🚀" "💡" "🎉" "🔑" "🇹🇭" "🚦" "🌙")
  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
  prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
}
