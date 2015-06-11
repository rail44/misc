build: ttf-input.patched
	cd $< && makepkg

install:
	pacman -U ttf-input.patched/ttf-input-*-*.pkg.tar.xz 

ttf-input.patched: ttf-input ttf-input.patch
	rm -rf $@
	cp -r $< $@
	patch -uN -p1 -d $@ < ttf-input.patch
	cd $@ && updpkgsums

ttf-input: ttf-input.tar.gz
	tar zxvf $< $@

ttf-input.tar.gz:
	aura -Aw ttf-input

clean:
	rm -rf ttf-input.patched ttf-input ttf-input.tar.gz
