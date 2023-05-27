DotFiles
===========

This repo is a collection of configuration files used to setup my desktop environment. 

# OSX

OSX has been my primary OS for a few years now and the most recently dotfiles all belong to OSX. The configuration files and associated
scripts can all be found underneath the `osx` directory.

## Terminal

I use `iTerm2` as my primary terminal and install a theme collection from [Iterm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes) by `mbadolato.

These themes are saved here under 
- `osx/.config/mbadolato-iTerm2-Color-Schemes-0c5cc04`

They are loaded into iTerm2 manually via the import functionality under profiles.

### ZSH

My primary shell is `zsh`, installed and configured via the `oh-my-zsh` project. I use the `powerlevel10k` ZSH theme
and I use it to configure my `$PS1`.

Relevant files:
- `.zshrc`: primary config file for my zsh environment, pulls in configurations from other dotfiles
- `.sh_functions`: custom shell functions, sourced on shell start via `.zshrc`
- `.sh_aliases`: custom shell aliases, sources on shell start via `.zshrc`

## NeoVim

Vim has been my primary text editor for ~10 years now and I recently switched to NeoVim to continue my Vim journey with a more modern toolkit.

Dot files are in 
- `osx/.config/nvim`


# Linux

I used to use ArchLinux and had a cool setup with a tiling desktop environment that was very specialized and highly customized. I gave up on this environment when I got my first Macbook Pro and decided that it was easier to just stick with OSX. My dot files are still here under the `/linux` directory but they haven't been touched in ages.
