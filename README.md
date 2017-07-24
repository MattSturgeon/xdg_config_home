# XDG\_CONFIG\_HOME directory

This repository should be located at `~/.config` (or whatever `$XDG_CONFIG_HOME` is set to). By default everything is ignored, to add files or directories to the repo you should whitelist them in `.gitignore` by prefixing with `!`.

To get the ZSH stuff working, you should install [oh-my-zsh][omz] using your package manager\* and then link `~/.zshrc` to `zsh.d/zshrc` in this directory:

```bash
pacaur -S oh-my-zsh
ln -s ~/.config/zsh.d/zshrc ~/.zshrc
```

\* The `zshrc` file assumes oh-my-zsh is installed at `/usr/share/oh-my-zsh/`.

[omz]: https://aur.archlinux.org/packages/oh-my-zsh-git/
