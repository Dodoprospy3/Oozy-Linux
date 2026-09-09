# Oozy Linux

**Arch, but for sane people.** 🫧

> Start as goo. Learn Linux. Evolve.

Oozy Linux is an Arch-based distribution designed for people who want the power and flexibility of Arch without needing to already understand Linux.

The goal is **not** to hide Linux from beginners.  
**It’s to teach them.**

---

## The Goo Philosophy

Every Linux user starts somewhere.

With Oozy, you start as a little goo ball.

As you use the system you learn more about Linux and gradually evolve — step by step.

Oozy doesn’t exist to keep you using it forever.  
It exists to help you learn enough that one day you *can* leave it (or stay, if you want).

---

## Current Status (Oozy 1 mL)

We now have a real foundation:

- [x] archiso profile based on official Arch releng
- [x] **KDE Plasma** as the default desktop
- [x] **Calamares** installer with Oozy branding
- [x] Live user + autologin into Plasma
- [x] NetworkManager, PipeWire, basic sensible defaults
- [x] os-release, motd, welcome flow
- [ ] First successful public ISO build & testing
- [ ] Wallpaper / logo polish
- [ ] More polished welcome experience

The project lives mainly on the `dev` branch.

---

## Building the ISO

You need an up-to-date Arch Linux system.

```bash
sudo pacman -Syu --needed archiso git

git clone https://github.com/Dodoprospy3/Oozy-Linux.git
cd Oozy-Linux
git checkout dev

# Easy way
sudo ./scripts/build.sh

# Or manually
sudo mkarchiso -v -w work -o out archiso/
```

The ISO will appear in the `out/` directory.

> **Note:** First builds take a long time and require several GB of free space + a good internet connection.

---

## Goals

- Make Arch-based Linux approachable to beginners
- Provide sensible defaults (KDE Plasma)
- Make installation simple (Calamares)
- Teach users how Linux works
- Avoid unnecessary bloat
- Keep full access to the Arch ecosystem and AUR
- Make recovering from common mistakes easier
- Build a friendly open-source community

---

## Release Philosophy

Versions are measured in liquid volume:

- Oozy 1 mL ← *current target*
- Oozy 10 mL
- Oozy 100 mL
- …

---

## Contributing

See [CONTRIBUTE.md](CONTRIBUTE.md).

You don’t need to be an Arch expert. Documentation, testing, design, and ideas are all welcome.

If you want to work on the OS itself, please also read the included Helwan guidebook:

**[Documents/helwan-book.pdf](Documents/helwan-book.pdf)**

---

## Principle

> Oozy should teach, not hide.  
> Make Linux easy to enter, easy to understand, and eventually easy to leave.

---

**Oozy Linux**  
*Arch, but for sane people.*
