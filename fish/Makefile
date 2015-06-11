BASE16_SHELL_REPO = https://github.com/chriskempson/base16-shell.git 

$(HOME)/.config/fish/config.fish: config.fish $(HOME)/.config/fish/base16-shell
	cp -f $< $@

$(HOME)/.config/fish/base16-shell:
	git clone $(BASE16_SHELL_REPO) $@
