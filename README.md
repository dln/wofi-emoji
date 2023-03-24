# wofi-emoji 🥞

Simple emoji selector for Wayland using [wofi](https://cloudninja.pw/docs/wofi.html).
It relies on [wtype](https://github.com/atx/wtype) when it's supported, otherwise,
[wl-clipboard](https://github.com/bugaevc/wl-clipboard) is used instead.

![Screenshot of wofi-emoji in action](https://i.imgur.com/8XiUoh6.png)

## Usage

wofi-emoji is built on top of wofi.
Meaning all styling can be done using css refering to [wofi documentation](https://cloudninja.pw/docs/wofi.html), and launch using flags that refered in [manual](https://man.archlinux.org/man/wofi.1.en).

```
## Usage with Sway

Download [wofi-emoji](https://github.com/dln/wofi-emoji/raw/master/wofi-emoji), ensure it's executable and somewhere in your `$PATH`.

Add a shortcut key in your [sway](https://swaywm.org/) config:

```

# ~/.config/sway/config

bindsym Mod4+e exec path/to/wofi-emoji

````
## Hyprland Usage
Download wofi-emoji using AUR or github.

Add a shortcut key in your [hyperland]() config:
```bash
# ~/.config/hypr/hyprland.conf
bind = $mainMod, PERIOD, exec, ~/.config/wofi-emoji/wofi-emoji
````

```

```
