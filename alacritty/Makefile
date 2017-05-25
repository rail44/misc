CONFIG_DIR = $(HOME)/.config/alacritty

build:

install: $(CONFIG_DIR)/alacritty.yml

$(CONFIG_DIR)/alacritty.yml: alacritty.yml
	ln -sf $(realpath $<) $@

clean:
