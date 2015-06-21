$(HOME)/.config/fish/config.fish: config.fish $(HOME)/.config/fish/base16-shell
	cp -f $< $@

$(HOME)/.config/fish/base16-shell: ../base16/output/shell
	rm -rf $@
	cp -rf $< $@

../base16/output/shell:
	make -C ../base16 output/shell
