PLUG_VIM_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
NVIM_DIR = $(HOME)/.config/nvim
INITVIM = $(NVIM_DIR)/init.vim
VIM_PLUG_DIR = $(NVIM_DIR)/plugged

build:

install: build $(INITVIM) $(VIM_PLUG_DIR)

$(VIM_PLUG_DIR): $(INITVIM)
	nvim +PlugInstall +qall
	touch $@

$(INITVIM): init.vim $(NVIM_DIR)/autoload/plug.vim 
	ln -sf $(realpath $<) $@
	touch $@

$(NVIM_DIR)/autoload/plug.vim:
	mkdir -p $(NVIM_DIR)/autoload
	curl -fLo $@ $(PLUG_VIM_URL)

clean:
