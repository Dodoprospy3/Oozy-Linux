# Building Oozy Linux

## Prerequisites

You need an Arch Linux (or very close derivative) system with the following packages:

```bash
sudo pacman -S --needed archiso git
```

## Quick build

```bash
git clone https://github.com/Dodoprospy3/Oozy-Linux.git
cd Oozy-Linux
git checkout dev

sudo mkarchiso -v -w work -o out archiso/
```

The ISO will be created in the `out/` directory.

## Notes

- Building requires root.
- You need several gigabytes of free space.
- The first builds will take a while (downloading packages).
- This is still under heavy development. Expect breakage.

## Cleaning up

```bash
sudo rm -rf work out
```
