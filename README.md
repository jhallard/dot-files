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

### Quick Reference NeoVim

This is a quick reference to shortcuts that I've configured in NeoVim (copied from my Notion)

- Press `<Leader>z` to load/update new plugins
- Press `<C-y>` to accept a suggestion (for instance, when typing a command)
- `:colorscheme {nightfox|dayfox}` to toggle colorschemes
- `<Leader>ff` to open fuzzy search for new files
- `<Leader>ft` to open the floating tree view
    - `g?` to open help and `a` to create a new file in current directory
- `:LuaSnipListAvailable` to show available snippets
    - Snippets work by typing some command in `insert` mode and then pressing enter on the snippet. Super cool. Try `classi` in Python script in insert mode to make a new class or `time`
- Terminal access
    - Provided via the ToggleTerm plug-in
        - https://github.com/akinsho/toggleterm.nvim
    - Mapped to `<C-D>` (instead of exiting out to a shell). This toggles the terminal on/off
    - Provides a float terminal, the state of the terminal persists
- Copilot
    - Suggestions will automatically show for you
        - `M` is the `option` key (meta key)
        - `<M-]>` and `<M-[>` cycle through suggestions
        - `<M-l>` accepts a suggestion, `<C-l>` rejects
    - You can open a panel using `<M-CR>` (meta-enter) to look at more complicated suggestions
- Git integration
    - You have a `lazygit` integration built-in!
        - Use `<leader>gg` to toggle the lazygit UI
        - Use `q` to quit
        - 
- Visual mode
    - You can navigate multiple lines at a time!
    - Select a line to highlight (`V`)
        - Then type `50G` to go to line 50 (notice, not `:50G`, just `50G`).
        - You can type e.g. `10` to go down ten lines
- LSP
    - You can use `<C-b>` and `<C-f>` to scroll through the docs that show up
    - You can use `gd` (go-to definition) to hop to the definition of an item
        - You can use `<C-o>` to jump back to the previous file after jumping to a definition!
        - You can use `[d` to go to the next diagnostic and `[e` to go to the next error!?


# Linux

I used to use ArchLinux and had a cool setup with a tiling desktop environment that was very specialized and highly customized. I gave up on this environment when I got my first Macbook Pro and decided that it was easier to just stick with OSX. My dot files are still here under the `/linux` directory but they haven't been touched in ages.
