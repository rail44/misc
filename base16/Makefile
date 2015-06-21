BASE16_DIR = ./base16-builder
OUTPUT_DIR = $(BASE16_DIR)/output
SCHEMES_DIR = $(BASE16_DIR)/schemes
BASE16_SCRIPT = $(BASE16_DIR)/base16
PALETTE_SCHEME = $(SCHEMES_DIR)/palette.yml

build: vim output/gnome-terminal output/shell

install: build

$(BASE16_DIR):
	git clone https://github.com/rail44/base16-builder.git $@

$(PALETTE_SCHEME): $(BASE16_DIR)

$(OUTPUT_DIR)/%: $(PALETTE_SCHEME)
	$(BASE16_SCRIPT) -s $(PALETTE_SCHEME) -t $*

output/%: $(OUTPUT_DIR)/%
	mkdir -p output
	cp -rf $< output

vim: $(OUTPUT_DIR)/vim
	rm -rf vim
	mkdir -p vim
	cp -rf $< vim/colors

clean:
	rm -rf output $(BASE16_DIR)
