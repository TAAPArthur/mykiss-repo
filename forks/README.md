# Collection of forks

alsa-utils - allow compiling with tcc
curl - made static
dmenu - custom patches
ffmpeg - removed x265 (cmake) and use libtls instead of openssl
freetype-harfbuzz - fix freetype path
girara - removed json depends (cmake)
git - added perl support; Added bash completion
imlib2 - Used libjpeg instead turbo
libXft - fix freetype path
libarchive - allow compilation with tcc
libmupdf - libjpeg and patched Makefile to removed options causing tcc to fail; also used system libs
libwebp - use libjpeg instead of libjpeg turbo
mesa - disabled llvm; Enabled dri for arm; Build glxgears
mpv - enabled lua
mtdev - replace builtin_ffs with musl's ffs so it can properly be linked against; Also provide the --build arg so it can build on the pinephone
musl - fixing wchar_t and wint_t typedefs to work with tcc on arm64
python - removed sqlite dependency and added readline depend
sbase - made flock not fork
sxiv - Add WM hints patch and custom config.def.h
ubase - made getty not change tty permissions
vim - disable mouse support
xorg-server - to support tcc
zathra - forked to disable magic
zathura-pdf-mupdf - removed unneeded dependencies

# Future work
busybox
fontconfig
freetype-harfbuzz
fribidi
gdk-pixbuf
gtk+3
lame - Made static
lcms
libXfont2
libass - Made static
libinput - Made static
libmupdf
libpng - Made static
libsndfile
libwebp
meson
mpv
ncurses
sbase
sed
strace
tiff
x264
xvidcore - Disable shared build; removed depends
zathura
zathura-pdf-mupdf
