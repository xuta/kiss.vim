# kiss.vim

`kiss.vim` is a set of selected plugins with handy hot-keys and experienced setup to enhance neovim to be more powerful text-editor for general purpose.

## Features

* Mouse support
* Multiline editing
* [NERDTree](https://github.com/preservim/nerdtree) and [Ranger](https://github.com/francoiscabrol/ranger.vim) as file explorer
* [LeaderF](https://github.com/Yggdroot/LeaderF) for great fuzzy files searching with preview
* [Easymotion](https://github.com/easymotion/vim-easymotion) to replace default search
* Handy movement by experienced hot-keys setup
* Auto saving
* Markdown support

## Requirements

* [vim-plug](https://github.com/junegunn/vim-plug)
* [Ranger](https://ranger.github.io)
* [rg](https://github.com/BurntSushi/ripgrep)
* ctags (optional)

## Installation

**Note**: this configuration might conflict with your current setup. 

```bash
# Assuming that your nvim configuration is empty before starting
mkdir -p ~/.config/nvim
cd ~/.config/nvim
git clone git@github.com:xuta/kiss.vim.git .
nvim
```

## Shortcuts

Check out [mapping.vim](https://github.com/xuta/kiss.vim/blob/main/mapping.vim)

## Pro tips

* `:cd` to change working directory, LeaderF and NERDTree will change root directory for exploring and searching.
* `Ctrl-f` to search text in current buffer with input from clipboard
* `Ctrl-]` to go to end of line in `insert` mode

## References

* [influenced by jdhao's nvim-config](https://github.com/jdhao/nvim-config)

