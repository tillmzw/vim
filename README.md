# README

## Requirements

* either `vim` compiled with `+python` or try `vim-nox` (`vim --version | grep python`)

## Install

```bash:
git clone $repo ~/.vim
(cd ~/.vim && git submodule update --init --recursive)
ln -s ~/.vim/vimrc ~/.vimrc
```

### Fonts

```
sudo apt install fonts-inconsolata
mkdir -p ~/.fonts
wget 'https://github.com/ryanoasis/nerd-fonts/raw/1.2.0/patched-fonts/Inconsolata/complete/Inconsolata%20Nerd%20Font%20Complete%20Mono.otf' -O '~/.fonts/Inconsolata Nerd Font Complete Mono.otf'
```

### [vim-go](https://github.com/fatih/vim-go)

*You will also need to install all the necessary binaries. vim-go makes it easy to install all of them by providing a command, `:GoInstallBinaries`, which will go get all the required binaries.*


### [image.vim](https://github.com/ashisha/image.vim)

* requires PIL
* absolutely needs python support. remove if no python support available


## Cheat Sheet

* General plugin list [vimawesome.com](https://vimawesome.com/)
* `<leader>` = `,` (`.vimrc`!)
* `CTRL+O` = jump to previous buffer
* `CTRL+I` = jump to next buffer
* `CTRL+r` = replace selected text in whole buffer

### Window Management

* `CTRL+w J`: Move window to the bottom
* `CTRL+w L`: Move window to the left
* `CTRL+w CTRL+r`: Swap windows, i.e. rotate buffers
* `CTRL+w k`: Change layout to horizontal split
* `CTRL+w h`: Change layout to vertical split

### Registers

* `"+y`: Copy selection to system-wide clipboard -- *this requires vim with `clipboard` support, e.g. by installing `vim-gtk`*
* `"*y`: Copy selection to the cut buffer (internal to vim)


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

### `NERDTREE`

* `r`: reload current directory listing
* `R`: reload root directory listing

### `vim-go`

* `:GoBuild`, `:GoInstall`, `:GoRun`
* `gd`: go to definition
* `Ctrl+X Ctrl+O`: autocomplete

### `ale`

* `:help ale-navigation-commands`
* `:ALEFirst`: go to first warning/error in this file
* `:ALENext`: ...
* `:ALEFix`: try to fix currently highlighted issue automatically

### `uncrustify`

* `Ctrl+r`: run uncrustify on currently open file (if file is C or CPP)

### `commentary`

* `gcc`: toggle commentation of a line
* `gc`: toggle commentation of a motion (i.e. a context)
