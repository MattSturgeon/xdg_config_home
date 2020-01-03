# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    # It's fast enough, so disabled for now.
    # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Zplugin autoinstall
if [[ ! -f $ZPLG_HOME/bin/zplugin.zsh ]]; then
    git clone https://github.com/psprint/zplugin $ZPLG_HOME/bin
    zcompile $ZPLG_HOME/bin/zplugin.zsh
fi
source "$ZPLG_HOME/bin/zplugin.zsh"
local load=light

# The default keybinds are rubbish, steal from omz
source "$ZDOTDIR/key-bindings.zsh"

# History
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# Auto completion
zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

# Plugins

# Try the arch/pacman script
# TODO: cascade through alternatives for other distros
local cnf="/usr/share/doc/pkgfile/command-not-found.zsh"
[[ -f "$cnf" ]] && source "$cnf"


# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
zplugin atload"!source $XDG_CONFIG_HOME/zsh/.p10k.zsh" lucid nocd
zplugin $load romkatv/powerlevel10k

zplugin $load willghatch/zsh-saneopt

# z fails if it's _Z_DATA file isn't a normal file, so ensure it is
[ ! -f "$_Z_DATA" ] && install -m 644 -D /dev/null "$_Z_DATA"
zplugin $load rupa/z

zplugin ice nocompile:! pick:c.zsh atpull:%atclone atclone:'dircolors -b LS_COLORS > c.zsh'
zplugin $load trapd00r/LS_COLORS

zplugin ice blockf atpull'zplugin creinstall -q .'
zplugin $load zsh-users/zsh-completions

zplugin ice silent wait:1 lucid atload'_zsh_autosuggest_start'
zplugin $load zsh-users/zsh-autosuggestions

zplugin ice silent wait:1; zplugin $load mollifier/cd-gitroot
zplugin ice silent wait:1; zplugin $load supercrabtree/k

zplugin ice silent wait!1 atinit"mkdir -p $XDG_CACHE_HOME/zsh; zpcompinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION; zpcdreplay"
zplugin $load zdharma/fast-syntax-highlighting