# Testing Oozy Linux

## Building

```bash
git checkout dev
sudo ./scripts/build.sh
```

## Recommended test matrix

1. **QEMU / VirtualBox / VMware**
   - Boot the ISO
   - Confirm Plasma starts and autologin works
   - Confirm NetworkManager connects
   - Launch Calamares and do a full install into a virtual disk

2. **Real hardware** (when virtual tests pass)
   - UEFI and Legacy BIOS if possible
   - Different GPUs (Intel / AMD / NVIDIA)
   - Install alongside another OS and as the only OS

## What to check after installation

- System boots into SDDM / Plasma
- Network works
- User created during install can log in and use sudo
- `cat /etc/os-release` shows Oozy Linux
- No leftover live-only packages (calamares, mkinitcpio-archiso, etc.)

## Reporting issues

Please open an issue and include:

- How you built the ISO (commit hash)
- Virtual or real hardware
- Exact steps that failed
- Logs if possible (`/var/log/calamares/` or journalctl)
