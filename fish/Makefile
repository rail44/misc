CONFIG_DIR = $(HOME)/.config/fish

build:

install: $(CONFIG_DIR)/config.fish

$(CONFIG_DIR)/config.fish: config.fish
	ln -sf $(realpath $<) $@

clean:
