# Example 4k intro for 64-bit Linux

![shrinky-intro](shrinky-intro.gif)

This is a 4k intro skeleton, originally from [dnload by Faemiyah](http://faemiyah.fi/demoscene/dnload).

The binary is 1097 bytes when building it here. It uses the header-trick, where the ELF file is extracted to /tmp before being run, which should be allowed for most demoscene intro-compos.

This project can be compiled with [shrinky](https://github.com/xyproto/shrinky) (available in [AUR](https://aur.archlinux.org/packages/shrinky/)).

The intro itself is also available in [AUR](https://aur.archlinux.org/packages/shrinky-intro/).

The purpose of "shrinky" and "shrinky-intro" is to make modifications that makes dnload simpler to use on Arch Linux.

* The header-trick in `dnload` does not work out of the box on Arch Linux. At least under `zsh`, the executables just doesn't run.
* Exiting by calling int 0x3 causes a SIGTRAP signal at exit (can be configured in dnload).
* g++7 is selected instead of g++8 if g++8 is `/usr/bin/g++` and g++7 is `/usr/bin/g++7`.

Shrinky makes the default behavior more desirable for use on Arch Linux.
