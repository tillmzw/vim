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

### [vim-go](https://github.com/fatih/vim-go)

*You will also need to install all the necessary binaries. vim-go makes it easy to install all of them by providing a command, `:GoInstallBinaries`, which will go get all the required binaries.*


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

### `vim-go`

* `:GoBuild`, `:GoInstall`, `:GoRun`
* `gd`: go to definition
* `Ctrl+X Ctrl+O`: autocomplete

