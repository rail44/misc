BASE16_DIR = ../base16
COLOR_PATCH=$(BASE16_DIR)/output/st/base16-palette.config.h.patch

build: st/config.h
	cd st && updpkgsums
	cd st && makepkg

install:
	cd st && pacman -U *.pkg.tar.xz

st/config.h: st/config.h.orig
	rm -rf $@
	cp $< $@
	patch -u st/config.h < $(COLOR_PATCH)
	patch -u st/config.h < config.h.patch

st/config.h.orig: st

$(COLOR_PATCH):
	make -C $(BASE16_DIR) output/st

st: st.tar.gz
	rm -rf $@
	tar -zxvf $<
	mv st/config.h st/config.h.orig

st.tar.gz:
	rm -rf $@
	aura -Aw st

clean:
	rm -rf st.tar.gz st
