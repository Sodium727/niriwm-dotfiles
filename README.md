# Introduction
Made for Arch Linux. Not sure if it works on other distros too.
It's simple, just copy everything and put them in the correct directories of your Arch Linux machine.
The goal is to make a functional, performant setup. Thus, there is minimal composition (little eyes-candy!).

# Prerequisites
- [niri](https://github.com/YaLTeR/niri)
- swaylock-effects, swayidle, swaync
- [neovim](https://github.com/neovim/neovim) (text editor) (with Lazy plugins manager)
- [yay](https://github.com/Jguer/yay) (to install stuff from the [AUR](https://aur.archlinux.org/)) (you can also use [paru](https://github.com/Morganamilo/paru))
- [fuzzel](https://mark.stosberg.com/fuzzel-a-great-dmenu-and-rofi-altenrative-for-wayland/) (app launcher)
- [cliphist](https://github.com/sentriz/cliphist) (the clipboard manager)
- [bemoji](https://github.com/marty-oehme/bemoji) (get emojis)
- [alacritty](https://github.com/alacritty/alacritty) (terminal emulator)
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) (need to install [zsh](https://www.zsh.org/) shell first)
- [nnn](https://github.com/jarun/nnn) (TUI file manager)
- [JetBrainsMono](https://github.com/JetBrains/JetBrainsMono), or the [Nerd Font](https://github.com/ryanoasis/nerd-fonts) version.
- [waybar](https://github.com/Alexays/Waybar) (status bar)
### Optional
- [fcitx5](https://github.com/fcitx/fcitx5) (for keyboard language)
- [thunar](https://github.com/neilbrown/thunar) (GUI file manager). Use it when drag-drop files is needed

# Usage
Make sure to back up your current configurations.
- Simply copy everything in `.config/` to your own `~/.config` directory.

# Niri keybinds (just read `.config/niri/config.kdl` lol)
- The Modifier key (notated as `Mod`) here is the Windows key.

- `Mod` + `S` : Screenshot (choose area, then it goes to clipboard). (Add `Shift` to quickly get the whole screen)
- `Mod` + `V`: Open clipboard history (in fuzzel)
- `Mod` + `E`: Open file manager (nnn)
- `Mod` + `Alt` + `L`: Lock screen (swaylock)
- `Mod` + `T` or `Mod` + `Enter`: Open terminal (alacritty)
- `Mod` + `Space`: Open app launcher (fuzzel)
- `Mod` + `Shift` + `P`: Open power menu (fuzzel)

# Wallpaper
To change background, edit `.config/sway/config`, at a line which may look like:
```
output * bg /home/dat/.config/sway/bg/wallpaper.jpg fill
```
Or use [swaybg](https://github.com/swaywm/swaybg)

# The `setup-arch.sh` script
It is meant for personal use, though you can always give it a run (make sure to read it carefully). It is recommended to run it on a fresh installation of Arch Linux.
