# ZSH_CUSTOM directory

You should install [oh-my-zsh][omz] from the AUR and then link `~/.zshrc` to `zshrc` in this directory.

If this directory is not `~/.config/zsh.d` then you should edit the `ZSH_CUSTOM` variable in `zshrc`.

```bash
pacaur -S oh-my-zsh
ln -s ~/.config/zsh.d/zshrc ~/.zshrc
```

[omz]: https://aur.archlinux.org/packages/oh-my-zsh-git/
