# my alias custom

# os alias
alias update_console="source ~/.zshrc"
alias os_version="neofetch"
alias update_ubuntu="sudo apt-get update && sudo apt-get upgrade -y"

# apps alias
alias nv="nvim ."
alias move_branch="git fetch && git checkout " 

# devops alias
alias circle-local="circleci local execute --job "
alias circle-valid="circleci config validate"
alias ngrok_up="cd && cd infra && ./ngrok http "
alias docker_perm="sudo chown $USER /var/run/docker.sock"

# lenguages alias
alias env_create="python3 -m venv venv"
alias env_active=". venv/bin/activate"
alias env_desactive="deactivate"

# path alias
PATH=$PATH:/usr/local/go/bin

# Deprecated alias
#alias view_devices="adb devices"
#alias tcp_ports="adb reverse tcp:9099 tcp:9099"
#alias run-emu="$ANDROID_HOME/tools/emulator @pixel2"
