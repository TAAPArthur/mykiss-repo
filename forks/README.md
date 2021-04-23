# Collection of forks

alsa-utils - allow compiling with tcc
curl - made static
dmenu - custom patches
ffmpeg - removed x265 (cmake) and use libtls instead of openssl
freetype-harfbuzz - fix freetype path
girara - removed json depends (cmake)
git - added perl support; Added bash completion
herbe - custom patches
libXft - fix freetype path
libmupdf - libjpeg and patched Makefile to removed options causing tcc to fail; also used system libs
libwebp - use libjpeg instead of libjpeg turbo
libudev-zero - apply patch (already in upstream) to support pinephone touch screen
mesa - disabled llvm; Enabled dri for arm
mpv - enabled lua
mtdev - replace builtin_ffs with musl's ffs so it can properly be linked against; Also provide the --build arg so it can build on the pinephone
musl - fixing wchar_t and wint_t typedefs to work with tcc on arm64
python - removed sqlite dependency
vim - disable mouse support
xorg-server - debug mode; disabled glamor


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
