<picture>
  <source media="(prefers-color-scheme: dark)" srcset="/docs/images/TOTEM_logo_dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="/docs/images/TOTEM_logo_bright.svg">
  <img alt="TOTEM logo font" src="/docs/images/TOTEM_logo_bright.svg">
</picture>

# ZMK CONFIG FOR THE TOTEM SPLIT KEYBOARD

[Here](https://github.com/GEIGEIGEIST/totem) you can find the hardware files and build guide.\
[Here](https://github.com/GEIGEIGEIST/qmk-config-totem) you can find the QMK config for the TOTEM.

TOTEM is a 38 key column-staggered split keyboard running [ZMK](https://zmk.dev/) or [QMK](https://docs.qmk.fm/). It's meant to be used with a SEEED XIAO BLE or RP2040.


![TOTEM layout](/docs/images/TOTEM_layout.svg)



## HOW TO USE

- fork this repo
- `git clone` your repo, to create a local copy on your PC (you can use the [command line](https://www.atlassian.com/git/tutorials) or [github desktop](https://desktop.github.com/))
- adjust the totem.keymap file (find all the keycodes on [the zmk docs pages](https://zmk.dev/docs/codes/))
- `git push` your repo to your fork
- on the GitHub page of your fork navigate to "Actions"
- scroll down and unzip the `firmware.zip` archive that contains the latest firmware
- connect the left half of the TOTEM to your PC, press reset twice
- the keyboard should now appear as a mass storage device
- drag'n'drop the `totem_left-xiao_ble-zmk.uf2` file from the archive onto the storage device
- repeat this process with the right half and the `totem_right-xiao_ble-zmk.uf2` file.

## LOCAL BUILD

With Docker Desktop or [Colima](https://github.com/abiosoft/colima) running, build the same firmware locally without committing your changes:

```sh
./scripts/build-local.sh        # both halves
./scripts/build-local.sh left   # left half only
./scripts/build-local.sh right  # right half only
```

The UF2 files and `firmware.zip` are written to `firmware/`, which is ignored by Git. The first build downloads the toolchain and ZMK dependencies; later builds reuse a Docker volume and are substantially faster.

## MAINTENANCE NOTES

- The personal keymap is `config/totem.keymap`. Both GitHub Actions and `scripts/build-local.sh` explicitly build with `config/`, so the fallback keymap under `boards/shields/totem/` is not used.
- The TOTEM shield is a Zephyr module declared by `zephyr/module.yml`; its hardware files live under `boards/shields/totem/`.
- The XIAO BLE Hardware Model v2 target is `xiao_ble//zmk` (`seeeduino_xiao_ble` is obsolete).
- ZMK is pinned to the same exact revision in `config/west.yml` and `.github/workflows/build.yml`. Update both together, then build both halves locally before committing.
- Deep sleep is enabled in `config/totem.conf` after 30 minutes of inactivity.
- Home-row mods use `tap-preferred`, a 170 ms tapping term, and 100 ms quick-tap/prior-idle terms. Positional filtering is not enabled.
- The personal keymap has no combos or TVPaint-specific layers.
- Builds may report `Deprecated symbol KSCAN is enabled`; this currently comes from ZMK's own GPIO matrix scanning stack and is not a TOTEM-specific migration issue.
