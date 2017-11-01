# README

## Requirements

* either `vim` compiled with `+python` or try `vim-nox` (`vim --version | grep python`)

## Install

```bash:

git clone $repo ~/.vim
(cd ~/.vim && git submodule update --init)
ln -s ~/.vim/vimrc ~/.vimrc
(cd ~/.vim/extra/powerline-fonts && ./install.sh)

```

## Cheat Sheet

* General plugin list [vimawesome.com](https://vimawesome.com/)
* `<leader>` = `,` (`.vimrc`!)
* `CTRL+O` = jump to previous buffer
* `CTRL+I` = jump to next buffer
* `CTRL+r` = replace selected text in whole buffer

### `jedi-vim`

* `Ctrl+Space`: open completion
* `<leader>+d`: go to definition
* `K`: open docs
* `<leader>+r`: rename (~refactor variable)
* `<leader>+n`: show usages
* `:Pyimport os`: imports `os` and shows `os.py` 

### `vim-fugitive`

* `:Gstatus`
		* `-` to add/reset 
		* `p` ?
* `:Gcommit`
* `:Gedit`
* `:Gsplit`, `:Gvsplit`
* `:Gdiff`
* `:Gbrowse`

