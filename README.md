📢 wofi-moji is now kindly maintained by ✨[@Zeioth](https://github.com/Zeioth/)✨. Head on over to [Zeioth/wofi-emoji](https://github.com/Zeioth/wofi-emoji) for all your emoji selection needs! 🚀

# wofi-emoji 🥞

Simple emoji selector for Wayland using [wofi](https://cloudninja.pw/docs/wofi.html).
It relies on [wtype](https://github.com/atx/wtype) when it's supported, otherwise,
[wl-clipboard](https://github.com/bugaevc/wl-clipboard) is used instead.

![Screenshot of wofi-emoji in action](https://i.imgur.com/8XiUoh6.png)

## Usage with Sway

Download [wofi-emoji](https://github.com/dln/wofi-emoji/raw/master/wofi-emoji), ensure it's executable and somewhere in your `$PATH`.

Add a shortcut key in your [sway](https://swaywm.org/) config:

```
# ~/.config/sway/config

bindsym Mod4+e exec path/to/wofi-emoji
```
