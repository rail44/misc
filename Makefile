default: default/alacritty default/fish default/neovim

default/%: clean/% build/% install/%
	@:

build/%:
	make -C $* build

install/%:
	make -C $* install

clean/%:
	make -C $* clean
