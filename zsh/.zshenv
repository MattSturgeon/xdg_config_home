# Ensure XDG stuff is set
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"

export HISTFILE="$XDG_DATA_HOME"/zsh/history

# Zplugin XDG spec
typeset -Agx ZPLGM
export ZPLG_HOME="$XDG_CACHE_HOME/zsh/zplugin"
export ZPLGM[HOME_DIR]="$ZPLG_HOME"
export ZPLGM[ZCOMPDUMP_PATH]="$XDG_CACHE_HOME/zsh/zcompdump"

export _Z_DATA="$XDG_DATA_HOME/z"
