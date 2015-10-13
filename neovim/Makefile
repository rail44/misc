PLUG_VIM_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
NVIM_DIR = $(HOME)/.nvim
VIM_PLUG_DIR = $(NVIM_DIR)/plugged
YCM_DIR = $(VIM_PLUG_DIR)/YouCompleteMe
YCM_CORE_LIB = $(YCM_DIR)/third_party/ycmd/ycm_core.so

build:

install: build $(HOME)/.nvimrc $(VIM_PLUG_DIR) $(YCM_CORE_LIB)

$(YCM_CORE_LIB):
	cd $(YCM_DIR) && python2 ./install.py --clang-completer --system-libclang --system-boost

$(VIM_PLUG_DIR): $(HOME)/.nvimrc
	nvim +PlugInstall +qall
	touch $@

$(HOME)/.nvimrc: .nvimrc $(NVIM_DIR) $(NVIM_DIR)/autoload/plug.vim 
	cp -f $< $@
	ln -nsf $@ $(HOME)/.vimrc

$(NVIM_DIR)/autoload/plug.vim: $(NVIM_DIR)
	curl -fLo $@ --create-dirs $(PLUG_VIM_URL)

$(NVIM_DIR):
	mkdir -p $@
	ln -nsf $@ $(HOME)/.vim

clean:
