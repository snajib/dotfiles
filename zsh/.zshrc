# pnpm
export PNPM_HOME="/Users/sammy/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Lazy load nvm
export NVM_DIR="$HOME/.nvm"
nvm() {
    unset -f nvm node npm npx
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"
    [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && source "/usr/local/opt/nvm/etc/bash_completion"
    nvm "$@"
}
node() {
    unset -f nvm node npm npx
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"
    node "$@"
}
npm() {
    unset -f nvm node npm npx
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"
    npm "$@"
}
npx() {
    unset -f nvm node npm npx
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"
    npx "$@"
}

# Lazy load direnv
direnv() {
    unset -f direnv
    eval "$(direnv hook zsh)"
    direnv "$@"
}

# Consolidate PATH exports at the end
export PATH=~/usr/bin:/bin:/usr/sbin:/sbin:$PATH