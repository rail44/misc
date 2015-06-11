PLUG_VIM_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

$(HOME)/.nvimrc: .nvimrc $(HOME)/.nvim/autoload/plug.vim
	cp -f $< $@

$(HOME)/.nvim/autoload/plug.vim:
	curl -fLo $@ --create-dirs $(PLUG_VIM_URL)
