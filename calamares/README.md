# Oozy Linux Calamares Configuration

This directory will contain the Calamares settings used by Oozy Linux.

## Planned structure

```
calamares/
├── settings.conf              # Main settings (sequence of modules)
├── branding/
│   └── oozy/                 # Our branding (logo, slides, colors)
├── modules/
│   ├── welcome.conf
│   ├── locale.conf
│   ├── keyboard.conf
│   ├── partition.conf
│   ├── users.conf
│   ├── summary.conf
│   └── ...
└── ...
```

Calamares will be launched from the live KDE Plasma session.

We aim for a clean, friendly, educational installer experience that matches the Goo philosophy.
