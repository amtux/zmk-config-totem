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

## KEYMAP

See [`layouts/layouts.md`](layouts/layouts.md) for a visual reference of every layer, or open the [print-ready portrait HTML](layouts/layouts.html). After layout changes, run `./layouts/generate.sh` to regenerate and open the HTML for review.

The alphas remain QWERTY, with semicolon in its standard home-row position. Apostrophe uses Totem's extra right key, while grave uses the extra left key. The thumb keys are:

```text
Esc/Nav  Backspace/Num  Tab/Fun  |  Delete/Mouse  Space/Sym  Enter/Media
```

Each layer is operated primarily by the hand opposite its layer thumb. Num uses a calculator-style right-hand number pad, Fun uses a right-hand function-key pad, and Mouse uses left-hand ESDF movement. Sym groups bracket pairs vertically on `Q/T`, `A/G`, and `Z/B`, with `\` and `|` adjacent on `E/R`. Hold Esc/Nav and Space/Sym together for the Config layer. The Media layer also contains macOS screenshot and emoji shortcuts. Output and Bluetooth-profile controls remain on Config.

## MAINTENANCE NOTES

- The personal keymap is `config/totem.keymap`. Both GitHub Actions and `scripts/build-local.sh` explicitly build with `config/`, so the fallback keymap under `boards/shields/totem/` is not used.
- The TOTEM shield is a Zephyr module declared by `zephyr/module.yml`; its hardware files live under `boards/shields/totem/`.
- The XIAO BLE Hardware Model v2 target is `xiao_ble//zmk` (`seeeduino_xiao_ble` is obsolete).
- ZMK is pinned to the same exact revision in `config/west.yml` and `.github/workflows/build.yml`. Update both together, then build both halves locally before committing.
- Deep sleep is enabled in `config/totem.conf` after 30 minutes of inactivity.
- Home-row mods match Miryoku's 200 ms tap-preferred behavior, without positional triggers or prior-idle guards. Thumb layer-taps use an independent 200 ms tap-preferred behavior with a 250 ms quick-tap window.
- The QWERTY keymap follows Miryoku's opposite-hand layer structure with dedicated Nav, Mouse, Media, Num, Sym, and Fun layers. Hold Esc/Nav and Space/Sym together to open Config.
- The personal keymap has no combos or TVPaint-specific layers.
- Builds may report `Deprecated symbol KSCAN is enabled`; this currently comes from ZMK's own GPIO matrix scanning stack and is not a TOTEM-specific migration issue.
