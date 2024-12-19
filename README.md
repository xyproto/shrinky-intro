# Skeleton for a 4k (demoscene) intro for 64-bit Linux

For developing on Arch Linux. The executables should work on any modern 64-bit x86 Linux distro.

![shrinky-intro](shrinky-intro.gif)

This is a 4k intro skeleton, originally from [dnload by Faemiyah](http://faemiyah.fi/demoscene/dnload). I can only take creds for making it work on Arch.

The binary is 1097 bytes when building it here. It uses a small shellscript header, where the ELF file is extracted to `/tmp` before being run. This is a permitted technique for most demoscene intro/4k compos. Extracting the code into memory and executing it there is an even better technique, though.

### Requirements

This project can be compiled with [shrinky](https://github.com/xyproto/shrinky) (available in [AUR](https://aur.archlinux.org/packages/shrinky/)).

    shrinky main.cpp

### In conclusion

* Impressive work by Faemiyah!
* Now easier to experiment with on Arch Linux.
