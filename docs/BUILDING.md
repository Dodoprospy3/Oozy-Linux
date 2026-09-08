# Building Oozy Linux

You need an up-to-date Arch Linux host.

```bash
sudo pacman -Syu --needed archiso git squashfs-tools
git clone https://github.com/Dodoprospy3/Oozy-Linux.git
cd Oozy-Linux
git checkout dev
sudo rm -rf work out
sudo mkarchiso -v -w work -o out archiso/
```

The ISO appears in `out/`.

Test:

```bash
run_archiso -u -i out/oozylinux-*.iso
```

Clean:

```bash
sudo rm -rf work out
```

## What you get

- KDE Plasma live session (user `liveuser`, no password, sudo allowed)
- Calamares installer (`Install Oozy Linux` on the desktop)
- NetworkManager, PipeWire, Firefox, Konsole, Dolphin

This is still early (Oozy 1 mL). Expect rough edges.
