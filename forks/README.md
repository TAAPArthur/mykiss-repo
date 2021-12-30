# Collection of forks

alsa-utils - allow compiling with tcc
binutils - enable complication with tcc
busybox - Removed some unneeded options; disabled gcc specific options
curl - made static and use miniz
dmenu - custom patches
ffmpeg - removed x265 (cmake) and webp; Use ~libtls~ gnutls instead of openssl; Silence deprecation related warnings; enabled libv4l; Explicitly add sdl2 depend
freetype-harfbuzz - reduce dependencies
girara - removed json depends (cmake)
git - added perl support; Added bash completion
glib - Remove json-glib
gtk+3 - Remove libXcomposite dependency
jq - Disabled shared lib and forked to remove GNUC hardcoding
iptables - remove non-portable install flags
keyutils - disable shared
kiss - Use custom fork
libXft - fix freetype path
libmupdf - libjpeg and patched Makefile to removed options causing tcc to fail; also used system libs
libnl - Make static
links - enable graphics
libudev-zero - don't install helper
mesa - disabled llvm; Only build useful drivers. Enabled opengl
mpv - enabled lua; use personal fork
mtdev - replace builtin_ffs with musl's ffs so it can properly be linked against; Also provide the --build arg so it can build on the pinephone
mtm - fullscreen patch and use alt instead of ctrl-g as a modifier
musl - fixing wchar_t and wint_t typedefs to work with tcc on arm64
ncurses - disabled shared pkg
nsxiv - use personal fork
oksh - custom patches for keybindings, tab-complete and autocompletion
pciutils - disable shared
python - removed sqlite dependency and added readline depend
sbase - made flock not fork
shellcheck-bin - Replace x86_64 with ARCH to be generic across all architectures
st - Applied custom patches like newtab and scrollback
sxiv - Add WM hints patch and custom config.def.h
ubase - made getty not change tty permissions
vim - disable mouse support
xsel - fork to remove autogen
xorg-server - to support tcc
xinit - Made xinit a process reaper

# Future work
fontconfig
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
meson
mpv
strace
tiff
x264
xvidcore - Disable shared build; removed depends
