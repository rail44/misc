build: st.patched
	cd $< && makepkg

install:
	pacman -U st.patched/st-*-*.pkg.tar.xz 

st.patched: st st.patch
	cp -r st $@
	patch -uN -p1 -d $@ < st.patch
	cd $@ && updpkgsums

st: st.tar.gz
	tar zxvf $< $@

st.tar.gz:
	aura -Aw st

clean:
	rm -rf st.patched st st.tar.gz
