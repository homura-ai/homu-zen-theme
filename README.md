# Homu Zen Theme

The theme and its installer live in [homuzen/theme](https://github.com/homura-ai/homuzen/tree/main/theme).

Install [Zen Browser](https://zen-browser.app/) and [Sine](https://github.com/CosmoCreeper/Sine), start Zen once, then close it. With Git and Python 3 installed, run this from a checkout of this repository.

```sh
./install.sh
```

The installer fetches the public theme and runs a full `apply`. It replaces the profile's Sine mod list, theme files and theme preference values after backing up the existing files to `~/hold/homu-zen-theme-backup-<time>/`.

The installer is for Linux. The theme tool searches Linux Zen locations for the default profile and uses `fcntl` to lock it. To select another profile, run `./install.sh --profile /path/to/profile`.

See the [upstream theme guide](https://github.com/homura-ai/homuzen/blob/main/theme/README.md) for setup with private mods and for updates.

[License](LICENSE)
