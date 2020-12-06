# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/mrebatta29/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
DISABLE_AUTO_TITLE="true"

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
plugins=(git)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;Code man, Code!\a"}
    ;;
esac

# my alias custom
alias update_console="source ~/.zshrc"
alias move_branch="git fetch && git checkout " 
alias os_version="neofetch"
alias circle-local="circleci local execute --job "
alias circle-valid="circleci config validate"
alias ngrok_up="cd && cd infra && ./ngrok http "
alias update_ubuntu="sudo apt-get update && sudo apt-get upgrade -y"
alias view_devices="adb devices"
alias tcp_ports="adb reverse tcp:9099 tcp:9099"
#alias tap_dev_tunnel="tap --key ~/.ssh/mrebatta@auntap.com --connection db-core --username mrebatta"
#alias tap_prod="cd /home/mrebatta29/.pems && ssh -i "vm-for-testing.pem" ubuntu@ec2-3-228-25-180.compute-1.amazonaws.com"
#alias bind_prod="cd /home/mrebatta29/.pems && ssh -i "BIND-PROD.pem" ubuntu@ec2-52-54-57-4.compute-1.amazonaws.com"

# my alias tap custom
alias gire_vpn="cd /home/mrebatta29/.pems && ssh -i "vpn-gire-qa.pem" ubuntu@ec2-34-237-9-48.compute-1.amazonaws.com"
alias card_prod="aws-vault exec tap-prod -- awslogs get tap-prod-card-gateway-logs tap-prod-card-gateway-v1-0\/card-gateway --watch --start='92h ago'"
alias em_prod="aws-vault exec tap-prod -- awslogs get tap-prod-event-manager-logs tap-prod-event-manager-v1-0\/event-manager --watch --start='92h ago'"
alias ledger_prod="aws-vault exec tap-prod -- awslogs get tap-prod-ledger-gateway-logs tap-prod-ledger-gateway-v1-0\/ledger-gateway --watch --start='92h ago'"
alias app_prod="aws-vault exec tap-prod -- awslogs get tap-prod-app-gateway-logs tap-prod-app-gateway-v1-0\/app-gateway --watch"


# Custom PATHS
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/mrebatta29/.sdkman"
[[ -s "/home/mrebatta29/.sdkman/bin/sdkman-init.sh" ]] && source "/home/mrebatta29/.sdkman/bin/sdkman-init.sh"
