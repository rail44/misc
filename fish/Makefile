CONFIG_DIR = $(HOME)/.config/fish

build: ../base16/output/shell

install: build $(CONFIG_DIR)/config.fish

$(CONFIG_DIR)/config.fish: config.fish $(CONFIG_DIR)/base16-shell
	cp -f $< $@

$(CONFIG_DIR)/base16-shell: ../base16/output/shell
	rm -rf $@
	cp -rf $< $@

../base16/output/shell:
	make -C ../base16 output/shell

clean:
