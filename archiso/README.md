# Oozy Linux archiso Profile

This directory contains the **archiso** profile used to build Oozy Linux ISOs.

## Requirements

- Arch Linux (or Arch-based) host
- `archiso` package installed
- Enough free space (several GB)
- Root privileges for building

## Building the ISO

```bash
# From the root of the repository
sudo mkarchiso -v -w work -o out archiso/
```

The resulting ISO will appear in the `out/` directory.

## Structure

- `profiledef.sh`          — Main profile definition
- `packages.x86_64`       — Packages included in the ISO
- `pacman.conf`           — Pacman configuration used during build
- `airootfs/`             — Files that will be present in the live system
- `efiboot/`              — EFI boot files
- `syslinux/`             — BIOS/Syslinux boot files

## Current Target

- **Desktop Environment:** KDE Plasma
- **Installer:** Calamares
- **Init system:** systemd
- **Bootloader (installed system):** systemd-boot (preferred) or GRUB

This is still early work. The profile is based on the official `releng` profile and is being customized for Oozy.
