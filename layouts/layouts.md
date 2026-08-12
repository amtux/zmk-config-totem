# Totem Keymap Layouts

Visual reference for the active keymap in [`config/totem.keymap`](../config/totem.keymap). Keys are shown from the left outer edge to the right outer edge.

## Legend

- For two-line keys, the **top line is tap** and the **bottom line is hold**.
- `GUI`, `ALT`, `CTRL`, and `SHIFT` are modifiers.
- `·` is an intentionally disabled key.
- Compact labels include `BKSP` (Backspace), `CAPSW` (Caps Word), `MSE←`/`SCR←` (mouse/scroll), `SHOT` (Screenshot), `BRI+`/`BRI-` (display brightness), `PLY/P` (Play/Pause), and `BOOT` (Bootloader).
- The wider bottom row includes Totem's extra outer pinkie key on each side.

## Layer access

```text
┏━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┓
┃ ESC ┃ BKSP┃ TAB ┃   ┃ DEL ┃SPACE┃ENTER┃
┃ NUM ┃ NAV ┃ FUN ┃   ┃MOUSE┃ SYM ┃MEDIA┃
┗━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┛
```

Hold **Backspace/Nav + Space/Sym** together to activate **Config**.

## Base

The alphas remain QWERTY. For two-line home-row and thumb keys, tap the top action or hold the bottom action.

```text
      ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
      ┃  Q  ┃  W  ┃  E  ┃  R  ┃  T  ┃   ┃  Y  ┃  U  ┃  I  ┃  O  ┃  P  ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫   ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫
      ┃  A  ┃  S  ┃  D  ┃  F  ┃  G  ┃   ┃  H  ┃  J  ┃  K  ┃  L  ┃  '  ┃
      ┃ GUI ┃ ALT ┃ CTRL┃SHIFT┃     ┃   ┃     ┃SHIFT┃ CTRL┃ ALT ┃ GUI ┃
      ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
┃  `  ┃  Z  ┃  X  ┃  C  ┃  V  ┃  B  ┃   ┃  N  ┃  M  ┃  ,  ┃  .  ┃  /  ┃  =  ┃
┃     ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃     ┃
┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
                  ┏━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┓
                  ┃ ESC ┃ BKSP┃ TAB ┃   ┃ DEL ┃SPACE┃ENTER┃
                  ┃ NUM ┃ NAV ┃ FUN ┃   ┃MOUSE┃ SYM ┃MEDIA┃
                  ┗━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┛
```

## Nav

Hold **Backspace/Nav**. Navigation and editing are on the right hand; modifiers remain on the left. Movement follows Vim's physical `H J K L` positions.

```text
      ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
      ┃CMD+4┃CMD+3┃CMD+2┃CMD+1┃  ·  ┃   ┃ REDO┃PASTE┃ COPY┃ CUT ┃ UNDO┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫   ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫
      ┃ GUI ┃ ALT ┃ CTRL┃SHIFT┃  ·  ┃   ┃ LEFT┃ DOWN┃  UP ┃RIGHT┃CAPSW┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
┃ SHOT┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃   ┃ HOME┃ PGDN┃PG UP┃ END ┃ INS ┃  ·  ┃
┃     ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃     ┃
┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
                  ┏━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┓
                  ┃  ·  ┃  ·  ┃  ·  ┃   ┃ DEL ┃SPACE┃ENTER┃
                  ┃     ┃     ┃     ┃   ┃MOUSE┃ SYM ┃MEDIA┃
                  ┗━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┛
```

## Mouse

Hold **Delete/Mouse**. Movement uses a left-hand WASD arrangement. `MB1`, `MB2`, and `MB3` are left, right, and middle mouse buttons.

```text
      ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
      ┃  ·  ┃ MSE↑┃  ·  ┃  ·  ┃  ·  ┃   ┃ REDO┃PASTE┃ COPY┃ CUT ┃ UNDO┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫   ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫
      ┃ MSE←┃ MSE↓┃ MSE→┃  ·  ┃  ·  ┃   ┃  ·  ┃SHIFT┃ CTRL┃ ALT ┃ GUI ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
┃  ·  ┃ SCR←┃ SCR↓┃ SCR↑┃ SCR→┃  ·  ┃   ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃
┃     ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃     ┃
┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
                  ┏━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┓
                  ┃ MB3 ┃ MB1 ┃ MB2 ┃   ┃  ·  ┃  ·  ┃  ·  ┃
                  ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃
                  ┗━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┛
```

## Media

Hold **Enter/Media**. Media, output, and Bluetooth controls are on the left hand; screenshot remains on `Y` for now.

```text
      ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
      ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃   ┃ SHOT┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫   ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫
      ┃ PREV┃VOL -┃VOL +┃ NEXT┃  ·  ┃   ┃  ·  ┃SHIFT┃ CTRL┃ ALT ┃ GUI ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
┃ OUT ┃ BT 0┃ BT 1┃ BT 2┃ BT 3┃ BT 4┃   ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃
┃     ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃     ┃
┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
                  ┏━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┓
                  ┃ STOP┃PLY/P┃ MUTE┃   ┃  ·  ┃  ·  ┃  ·  ┃
                  ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃
                  ┗━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┛
```

Screenshot sends `Cmd+Ctrl+Shift+4`.

## Num

Hold **Esc/Num**. The right-hand number-pad arrangement uses ordinary number-row keycodes, not keypad keycodes.

```text
      ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
      ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃   ┃  [  ┃  7  ┃  8  ┃  9  ┃  ]  ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫   ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫
      ┃ GUI ┃ ALT ┃ CTRL┃SHIFT┃  ·  ┃   ┃  ;  ┃  4  ┃  5  ┃  6  ┃  =  ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃   ┃  `  ┃  1  ┃  2  ┃  3  ┃  \  ┃  ·  ┃
┃     ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃     ┃
┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
                  ┏━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┓
                  ┃  ·  ┃  ·  ┃  ·  ┃   ┃  .  ┃  0  ┃  -  ┃
                  ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃
                  ┗━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┛
```

## Sym

Hold **Space/Sym**. Shifted symbols mirror the right-hand Num arrangement on the left hand where practical.

```text
      ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
      ┃  {  ┃  &  ┃  *  ┃  (  ┃  }  ┃   ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫   ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫
      ┃  :  ┃  $  ┃  %  ┃  ^  ┃  +  ┃   ┃  ·  ┃SHIFT┃ CTRL┃ ALT ┃ GUI ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
┃  ·  ┃  ~  ┃  !  ┃  @  ┃  #  ┃  |  ┃   ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃
┃     ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃     ┃
┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
                  ┏━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┓
                  ┃  (  ┃  )  ┃  _  ┃   ┃  ·  ┃  ·  ┃  ·  ┃
                  ┃     ┃ NAV ┃     ┃   ┃     ┃     ┃     ┃
                  ┗━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┛
```

Holding the `)/NAV` thumb key while Sym is active also activates Nav, producing the Config chord; tapping it produces `)`.

## Fun

Hold **Tab/Fun**. Function keys follow the same right-hand number-pad shape as Num.

```text
      ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
      ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃   ┃ BRI+┃  F7 ┃  F8 ┃  F9 ┃ F12 ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫   ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫
      ┃ GUI ┃ ALT ┃ CTRL┃SHIFT┃  ·  ┃   ┃ BRI-┃  F4 ┃  F5 ┃  F6 ┃ F11 ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃   ┃PAUSE┃  F1 ┃  F2 ┃  F3 ┃ F10 ┃  ·  ┃
┃     ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃     ┃
┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
                  ┏━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┓
                  ┃  ·  ┃  ·  ┃  ·  ┃   ┃ TAB ┃SPACE┃  ·  ┃
                  ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃
                  ┗━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┛
```

## Config

Hold **Backspace/Nav + Space/Sym**. Reset and bootloader require this two-thumb chord to reduce accidental activation.

```text
      ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
      ┃RESET┃ BOOT┃ OUT ┃ USB ┃ BLE ┃   ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫   ┣━━━━━╋━━━━━╋━━━━━╋━━━━━╋━━━━━┫
      ┃ BT 0┃ BT 1┃ BT 2┃ BT 3┃ BT 4┃   ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃
      ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃
      ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┳━━━━━┓
┃  ·  ┃BTCLR┃BTPRV┃BTNXT┃  ·  ┃  ·  ┃   ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃  ·  ┃
┃     ┃     ┃     ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃     ┃     ┃     ┃
┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┻━━━━━┛
                  ┏━━━━━┳━━━━━┳━━━━━┓   ┏━━━━━┳━━━━━┳━━━━━┓
                  ┃  ·  ┃  ·  ┃  ·  ┃   ┃  ·  ┃  ·  ┃  ·  ┃
                  ┃     ┃     ┃     ┃   ┃     ┃     ┃     ┃
                  ┗━━━━━┻━━━━━┻━━━━━┛   ┗━━━━━┻━━━━━┻━━━━━┛
```

## Tap-hold timing

- **Home-row mods:** Miryoku-style tap-preferred behavior with a 200 ms tap/hold term and no positional triggers, quick tap, or prior-idle guard. Hold a modifier through the term before pressing its target key.
- **Thumb layer-taps:** tap-preferred; 200 ms tap/hold term; 250 ms quick tap; no prior-idle guard. Holding through the term activates the layer.
