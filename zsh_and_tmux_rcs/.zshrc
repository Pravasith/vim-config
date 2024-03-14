# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="repos/powerlevel10k/powerlevel10k"
source ~/repos/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
    alias la="exa --long --all --group"
fi

alias vim="nvim"
alias py3="python3"

# Env Vars
export VIM_HOME=~/.config/nvim
export OPENGL_HOME=~/__work__/cpp_opengl
export REPOS_HOME=~/repos
export WINDOWS_BINARIES_HOME=~/windows_binaries

plugins=( git zsh-syntax-highlighting zsh-autosuggestions )
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
