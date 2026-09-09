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

We have a real, working foundation on the `dev` branch:

- archiso profile based on official Arch releng
- **KDE Plasma** desktop with autologin
- **Calamares** installer with Oozy branding
- Live session ready for installation
- Build script, documentation, and LICENSE

The biggest remaining step is a successful ISO build + testing.

---

## Building the ISO

Requires an up-to-date Arch Linux system:

```bash
sudo pacman -Syu --needed archiso git

git clone https://github.com/Dodoprospy3/Oozy-Linux.git
cd Oozy-Linux
git checkout dev

sudo ./scripts/build.sh
```

The ISO will be written to the `out/` directory.

See also [docs/TESTING.md](docs/TESTING.md).

---

## Goals

- Make Arch-based Linux approachable to beginners
- Provide sensible defaults (KDE Plasma)
- Make installation simple (Calamares)
- Teach users how Linux works
- Avoid unnecessary bloat
- Keep full access to the Arch ecosystem and AUR
- Make recovering from common mistakes easier

---

## Contributing

See [CONTRIBUTE.md](CONTRIBUTE.md).

For OS development, also read the included Helwan guidebook:  
[Documents/helwan-book.pdf](Documents/helwan-book.pdf)

---

## License

GPL-3.0-or-later — see [LICENSE](LICENSE).

---

**Oozy Linux**  
*Arch, but for sane people.*
