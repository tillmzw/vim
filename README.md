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

