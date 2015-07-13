BASE16_DIR = ../base16
COLOR_PATCH=$(BASE16_DIR)/output/st/base16-palette.config.h.patch

build: st/config.h st/PKGBUILD st/st.desktop
	cd st && updpkgsums
	cd st && makepkg

install:
	cd st && pacman -U *.pkg.tar.xz

st/config.h: st/config.h.orig config.h.patch $(COLOR_PATCH)
	rm -rf $@
	cp $< $@
	patch -u $@ < $(COLOR_PATCH)
	patch -u $@ < config.h.patch

st/config.h.orig: st

$(COLOR_PATCH):
	make -C $(BASE16_DIR) output/st

st/PKGBUILD: st/PKGBUILD.orig PKGBUILD.patch
	rm -rf $@
	cp $< $@
	patch -u $@ < PKGBUILD.patch

st/PKGBUILD.orig: st

st/st.desktop: st.desktop
	rm -rf $@
	cp $< $@

st: st.tar.gz
	rm -rf $@
	tar -zxvf $<
	mv st/config.h st/config.h.orig
	mv st/PKGBUILD st/PKGBUILD.orig

st.tar.gz:
	rm -rf $@
	aura -Aw st

clean:
	rm -rf st.tar.gz st
