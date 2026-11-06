# Inifynastic's NixOS Configuration

My personal NixOS configuration managed using **Nix Flakes** and **Home Manager**.

The goal of this repository is to keep my entire system reproducible, declarative, and easy to rebuild.

## Features

* NixOS configuration using flakes
* Home Manager integration
* Modular system configuration
* Declarative package management
* Managed dotfiles
* Managed Niri window manager configuration
* Reproducible development environments
* NVIDIA GPU configuration
* Custom desktop setup
* Configured emacs

## Repository Structure

```text
/etc/nixos
├── development
│   └── default.nix
├── flake.lock
├── flake.nix
├── home
│   ├── default.nix
│   ├── dotfiles
│   │   ├── alacritty
│   │   │   └── alacritty.toml
│   │   ├── btop
│   │   │   ├── btop.conf
│   │   │   └── themes
│   │   ├── cava
│   │   │   ├── config
│   │   │   ├── shaders
│   │   │   │   ├── bar_spectrum.frag
│   │   │   │   ├── eye_of_phi.frag
│   │   │   │   ├── northern_lights.frag
│   │   │   │   ├── pass_through.vert
│   │   │   │   ├── spectrogram.frag
│   │   │   │   └── winamp_line_style_spectrum.frag
│   │   │   └── themes
│   │   │       ├── solarized_dark
│   │   │       └── tricolor
│   │   ├── emacs
│   │   │   ├── configs
│   │   │   │   ├── appearance.el
│   │   │   │   ├── core.el
│   │   │   │   ├── genfiles.el
│   │   │   │   ├── ide-features.el
│   │   │   │   ├── launcher.el
│   │   │   │   └── platforms
│   │   │   │       ├── linux.el
│   │   │   │       └── windows.el
│   │   │   └── init.el
│   │   ├── fastfetch
│   │   │   └── config.jsonc
│   │   ├── fish
│   │   │   ├── completions
│   │   │   ├── conf.d
│   │   │   │   └── fish_frozen_key_bindings.fish
│   │   │   ├── config.fish
│   │   │   ├── fish_variables
│   │   │   └── functions
│   │   ├── fuzzel
│   │   │   └── fuzzel.ini
│   │   ├── mako
│   │   │   └── config
│   │   ├── niri
│   │   │   ├── binds.kdl
│   │   │   ├── config.kdl
│   │   │   ├── input.kdl
│   │   │   ├── layout.kdl
│   │   │   ├── misc.kdl
│   │   │   ├── output.kdl
│   │   │   └── rules.kdl
│   │   ├── swaylock
│   │   │   └── config
│   │   ├── waybar
│   │   │   ├── config.jsonc
│   │   │   ├── scripts
│   │   │   │   └── launch.sh
│   │   │   └── style.css
│   │   └── wlogout
│   │       ├── colors.css
│   │       ├── icons
│   │       │   ├── hibernate.png
│   │       │   ├── lock.png
│   │       │   ├── logout.png
│   │       │   ├── reboot.png
│   │       │   ├── shutdown.png
│   │       │   └── suspend.png
│   │       ├── layout
│   │       ├── noise.png
│   │       ├── style.css
│   │       └── themes
│   │           ├── glass
│   │           │   └── style.css
│   │           ├── modern
│   │           │   └── style.css
│   │           └── transparent
│   │               └── style.css
│   ├── modules
│   │   ├── dotfiles.nix
│   │   ├── homePackages.nix
│   │   ├── misc.nix
│   │   └── session.nix
│   ├── resources
│   │   └── wallpapers
│   │       ├── wallpaper1.jpg
│   │       ├── wallpaper2.jpg
│   │       ├── wallpaper3.jpg
│   │       └── wallpaper4.jpg
│   └── scripts
├── README.md
└── system
    ├── configuration.nix
    ├── hardware-configuration.nix
    └── modules
        ├── audio.nix
        ├── bluetooth.nix
        ├── boot.nix
        ├── desktop.nix
        ├── globalPackages.nix
        ├── homeManager.nix
        ├── misc.nix
        ├── networking.nix
        ├── nixSettings.nix
        ├── nvidia.nix
        ├── security.nix
        ├── services.nix
        └── users.nix
```

## Rebuilding

After changing the configuration:

```bash
sudo nixos-rebuild switch --flake .#NixOS
```

To test a configuration without switching:

```bash
sudo nixos-rebuild test --flake .#NixOS
```

## Home Manager

User-level configuration is handled through Home Manager.

Managed items include:

* Applications
* Environment variables
* Desktop configuration
* Dotfiles
* User resources

Changes to Home Manager are applied automatically when rebuilding the system.

## Desktop Environment

Current desktop stack:

* Window Manager: Niri
* Status Bar: Waybar
* Launcher: Fuzzel
* Terminal: Alacritty
* Wallpaper: Swaybg
* Lock Screen: Swaylock
* Notifications: Mako

## Philosophy

This configuration follows a few principles:

* Keep the system declarative
* Avoid manual configuration drift
* Separate system configuration from user configuration
* Keep important files tracked in Git
* Prefer reproducibility over convenience

## Development Environments

Development environments are handled separately using Nix flakes.

Projects can provide their own:

```bash
nix develop
```

environment instead of globally installing every dependency.

Future improvements may include:

* direnv integration
* reusable flake templates
* better development environment automation

## Current Focus

This configuration is continuously evolving.

Current goals:

* Improve Emacs environment
* Expand Home Manager coverage
* Remove remaining unmanaged dotfiles
* Improve development workflows
* Keep the system clean and reproducible

---

Built with NixOS ❤️


Also if you found out that READ ME is AI generated then you are correct. I am too lazy to make a proper README.md
