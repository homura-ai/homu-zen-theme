# Homu Zen Theme

The theme and its installer live in [homuzen/theme](https://github.com/homura-ai/homuzen/tree/main/theme).

Install [Zen Browser](https://zen-browser.app/) and [Sine](https://github.com/CosmoCreeper/Sine), start Zen once, then close it. With Git and Python 3 installed, run this from a checkout of this repository.

```sh
./install.sh
```

The installer fetches the public theme and applies it to Zen's default profile. To select a profile, run `./install.sh --profile /path/to/profile`.

If you have access to the private mods, clone [homuzen](https://github.com/homura-ai/homuzen) and initialize its `theme/mods-private` submodule before running `./theme/homu-zen-theme apply`. See the [upstream theme guide](https://github.com/homura-ai/homuzen/blob/main/theme/README.md) for setup and updates.

[License](LICENSE)
