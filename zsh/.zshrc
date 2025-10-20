# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
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

# enable fzf
source <(fzf --zsh)

# theme for bat
export BAT_THEME="Nord"

# fuzzily open multiple files in nvim
alias ff='fzf -m --preview="bat --color=always {}" --bind "enter:become(nvim {+})"'

# lazygit
alias lg='lazygit'

# nvim shortcut
alias vi='nvim'

# show hidden files
_comp_options+=(globdots)

# view open aerospace windows
alias fw="aerospace list-windows --all | fzf --bind 'enter:execute(bash -c \"aerospace focus --window-id {1}\")+abort'"
# Consolidate PATH exports at the end
export PATH=~/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# air
export PATH=$PATH:$(go env GOPATH)/bin

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
