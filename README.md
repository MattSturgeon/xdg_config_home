# XDG\_CONFIG\_HOME directory

This repository should be located at `~/.config` (or whatever `$XDG_CONFIG_HOME` is set to). By default everything is ignored, to add files or directories to the repo you should whitelist them in `.gitignore` by prefixing with `!`.

`ZDOTDIR` should be set (preferably in `/etc/zsh/zshenv`) to `${XDG_CONFIG_HOME:-$HOME/.config}/zsh`
