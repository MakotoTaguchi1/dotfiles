# general
source ~/.zsh/zsh-autosuggestions
setopt correct               # コマンドをtypoしたときに聞きなおしてくれる
setopt auto_cd               # cdなしでディレクトリ名を直接指定して移動
function chpwd() { ls }      # 移動後自動でls

# history
HISTFILE=${HOME}/.zsh_history
HISTSIZE=1000
SAVEHIST=100000
setopt hist_ignore_dups      # 直前と同じコマンドラインはヒストリに追加しない
setopt hist_no_store         # historyコマンドは履歴に登録しない
setopt inc_append_history    # 履歴をすぐに追加する
setopt share_history         # 他のターミナルとヒストリーを共有

# starship
eval "$(starship init zsh)"

# google cloud
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# terraform
alias tf=terraform

# k8s
## kubectl
source <(kubectl completion zsh)
alias k=kubectl
complete -o default -F __start_kubectl k
## krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
