# Building Oozy Linux

## Prerequisites

You need an up-to-date **Arch Linux** system.

```bash
sudo pacman -Syu --needed archiso git squashfs-tools
```

## Build the ISO

```bash
git clone https://github.com/Dodoprospy3/Oozy-Linux.git
cd Oozy-Linux
git checkout dev

# Recommended: clean previous builds
sudo rm -rf work out

# Build
sudo mkarchiso -v -w work -o out archiso/
```

The ISO will be created in the `out/` directory.

## Notes

- Building requires root privileges.
- You need several gigabytes of free disk space and a good internet connection (packages are downloaded).
- First builds take a long time.
- This profile is still under active development. Expect missing pieces and breakage.

## Testing the ISO

```bash
# Quick test with QEMU (install qemu-desktop if needed)
run_archiso -i out/oozylinux-*.iso
```

Or write it to a USB and boot on real hardware.

## Cleaning up

```bash
sudo rm -rf work out
```
