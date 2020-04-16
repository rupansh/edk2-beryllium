Attempt to create a minimal EDK2 for Poco F1.

## Status
Boots linux mainline(Without android configs) + busybox minimal initramfs

Requires grub2 in /firmware (don't format it)

Put Linux + Initramfs in an ext4 partition (and setup grub.cfg accordingly)

## Building
Tested on macOS High Sierra, case-sensitive drive

First, clone EDK2.

```
cd ..
git clone https://github.com/tianocore/edk2.git --recursive
git clone https://github.com/tianocore/edk2-platforms.git
```

see [EDK2 website](https://github.com/tianocore/tianocore.github.io/wiki/Using-EDK-II-with-Native-GCC#Install_required_software_from_apt)

Finally, ./build.sh.

Then fastboot boot uefi.img.

# Credits

zhuowei for base tree [/zhuowei](https://github.com/zhuowei)

fxsheep for his great sagit reference [/fxsheep/edk2-sagit](https://github.com/fxsheep/edk2-sagit)

SimpleFbDxe screen driver is from imbushuo's [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg).

pundiramit for mainline linux for beryllium [/pundiramit/linux](https://github.com/pundiramit/linux)

