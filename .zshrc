# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Base config
autoload -Uz compinit && compinit
plugins=(git ssh-agent zsh-z docker docker-compose op-autocomplete kubectl kubectl-autocomplete helm-autocomplete flux-autocomplete kustomize-autocomplete sudo zsh-autosuggestions zsh-syntax-highlighting ufw tmux macos screen)
ZSH_TMUX_AUTOSTART=true
setopt prompt_subst
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload bashcompinit && bashcompinit
autoload -Uz compinit
compinit
# Empty line before output
function add_line_before_output() {
    echo ""
}
autoload -Uz add-zsh-hook
add-zsh-hook preexec add_line_before_output
# Reload zsh
source $ZSH/oh-my-zsh.sh

# Starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Z
eval "$(zoxide init zsh)"

# FZF
eval "$(fzf --zsh)"

# Load Angular CLI autocompletion.
source <(ng completion script)

# Path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export KUBECONFIG="$HOME/.kube/config.yaml"

# Envs
export VISUAL=nvim;
export EDITOR=nvim;

# Custom functions
cd() {
        builtin cd "$@" && command eza --color=auto --icons  -F
}
mcd () {
    mkdir -p $1
    cd $1
}

# Aliases
alias mtar='tar -zcvf' # mtar <archive_compress>
alias utar='tar -zxvf' # utar <archive_decompress> <file_list>
alias zip='zip -r' # z <archive_compress> <file_list>
alias unzip='unzip' # uz <archive_decompress> -d <dir>
alias sr='source ~/.zshrc'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -p"
alias f='yazi'
alias cl='clear'
alias ls="eza --color=auto --icons"
alias l="ls"
alias la="ls -l --header --modified --color-scale"
alias lla="ls -la --header --modified --color-scale"
alias lal="lla"
alias lg="ls -lg --header --modified --color-scale"
alias lga="ls -lag --header --modified --color-scale"
alias lag="lga"
alias lt="ls --tree --header --modified --color-scale"
alias cat='bat --color always --plain'
alias grep='grep --color=auto'
alias mv='mv -v'
alias cp='cp -vr'
alias rm='rm -vr'
alias vim='nvim'
alias s='ssh'
alias e="exit"
alias which-key='xxd -psd'

# k8s
kdr() {
        kubectl "$@" --dry-run=client -o yaml
}

# YamlFix
export YAMLFIX_SEQUENCE_STYLE="block_style"
alias yamlfix-infra='yamlfix /Users/dciepiela/Documents/vps/infra --exclude=./cluster/flux-system/gotk-components.yaml'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
