# Godot 3 2D Fake Confetti Particles

![Godot v3.x](https://img.shields.io/badge/Godot-v3.x-478cbf?logo=godot-engine&logoColor=white&style=flat-square) ![release v1.0.0](https://img.shields.io/badge/release-v1.0.0-478cbf?style=flat-square) ![MIT license](https://img.shields.io/badge/license-MIT-478cbf?style=flat-square)

A script to simulate confetti particles 🎉.

![Godot 3 2D Fake Confetti Particles banner](../examples/fake_confetti_particles_example.gif)

## Table of contents

### Variables

- [emitting](#emitting)
- [type](#type)
- [amount](#amount)
- [random_amount](#random_amount)
- [size](#size)
- [random_size](#random_size)
- [visibility_rect](#visibility_rect)
- [colors](#colors)
- [random_position](#random_position)
- [one_shot](#one_shot)
- [fade](#fade)
- [timer_wait_time](#timer_wait_time)

## Variables

### emitting

If `true`, particles are being emitted.

```gdscript
export (bool) var emitting = false setget _set_emitting
```

|Name|Type|Default|Setter|
|:-|:-|:-|:-|
|`emitting`|`bool`|`false`|`_set_emitting`|

### type

The type of particles:
- `0 (Square)`.
- `1 (Circle)`.

```gdscript
export (int, "Square", "Circle") var type = 0
```

|Name|Type|Default|
|:-|:-|:-|
|`type`|`int`|`0`|

### amount

The number of particles.

```gdscript
export (int) var amount = 150
```

|Name|Type|Default|
|:-|:-|:-|
|`amount`|`int`|`150`|

### random_amount

If `true`, the number of particles can be a  random number between `amount / 2` and `amount * 2`.

If `false`, the number of particles will be the exact number in [amount](#amount).

```gdscript
export (bool) var random_amount = true
```

|Name|Type|Default|
|:-|:-|:-|
|`random_amount`|`bool`|`true`|

### size

The size of the particles.

If the particles are squares, `size` is the length of their sides.
If the particles are circles, `size` is their radius.

```gdscript
export (float) var size = 3.0
```

|Name|Type|Default|
|:-|:-|:-|
|`size`|`float`|`3.0`|

### random_size

If `true`, the size of the particles can be a  random number between `size / 2` and `size * 2`.

If `false`, the size of the particles will be the exact number in [size](#size).

```gdscript
export (bool) var random_size = true
```

|Name|Type|Default|
|:-|:-|:-|
|`random_size`|`bool`|`true`|

### visibility_rect

Controls the visibility of the particles.

```gdscript
export (Rect2) var visibility_rect = Rect2(0.0, 0.0, 1024.0, 600.0)
```

|Name|Type|Default|
|:-|:-|:-|
|`visibility_rect`|`Rect2`|`Rect2(0.0, 0.0, 1024.0, 600.0)`|

### colors

The color/s of the particles.

```gdscript
export (Array) var colors = [Color("#008751"), Color("#00e436"), Color("#29adff"), Color("#7e2553"), Color("#83769c"), Color("#ff004d"), Color("#ff77a8"), Color("#ffa300"), Color("#ffec27")]
```

|Name|Type|Default|
|:-|:-|:-|
|`colors`|`Array`|`[Color("#008751"), Color("#00e436"), Color("#29adff"), Color("#7e2553"), Color("#83769c"), Color("#ff004d"), Color("#ff77a8"), Color("#ffa300"), Color("#ffec27")]`|

### random_position

If `true`, the initial position of the particles  can be a random position in [visibility_rect](#visibility_rect).

If `false`, the initial position of the particles will be `Vector(0, 0)`.

```gdscript
export (bool) var random_position = true
```

|Name|Type|Default|
|:-|:-|:-|
|`random_position`|`bool`|`true`|

### one_shot

If `true`, only one emission cycle occurs.

```gdscript
export (bool) var one_shot = false
```

|Name|Type|Default|
|:-|:-|:-|
|`one_shot`|`bool`|`false`|

### fade

If `true`, the particles will gradually fade.

If `false`, the particles will end abruptly.

```gdscript
export (bool) var fade = true
```

|Name|Type|Default|
|:-|:-|:-|
|`fade`|`bool`|`true`|

### timer_wait_time

The duration (in seconds) of the emission cycle.

```gdscript
export (float) var timer_wait_time = 1.0
```

|Name|Type|Default|
|:-|:-|:-|
|`timer_wait_time`|`float`|`1.0`|

## 🗒️ Changelog

See [CHANGELOG](/CHANGELOG.md).

## 👤 Author

- hiulit

## 🤝 Contributing

Feel free to:

- [Open an issue](https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles/issues) if you find a bug.
- [Create a pull request](https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles/pulls) if you have a new cool feature to add to the project.

## 🙌 Supporting this project

If you find this project helpful, please consider supporting it through any size donations to help make it better.

[![Become a patron](https://img.shields.io/badge/Become_a_patron-ff424d?logo=Patreon&style=for-the-badge&logoColor=white)](https://www.patreon.com/hiulit)

[![Suppor me on Ko-Fi](https://img.shields.io/badge/Support_me_on_Ko--fi-F16061?logo=Ko-fi&style=for-the-badge&logoColor=white)](https://ko-fi.com/F2F7136ND)

[![Buy me a coffee](https://img.shields.io/badge/Buy_me_a_coffee-FFDD00?logo=buy-me-a-coffee&style=for-the-badge&logoColor=black)](https://www.buymeacoffee.com/hiulit)

[![Donate Paypal](https://img.shields.io/badge/PayPal-00457C?logo=PayPal&style=for-the-badge&label=Donate)](https://www.paypal.com/paypalme/hiulit)

If you can't, consider sharing it with the world...

[![Share on Twitter](https://img.shields.io/badge/Share_on_Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/intent/tweet?url=https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles&text=%22Godot%203%202D%20Fake%20Confetti%20Particles%22%0AA%20script%20to%20simulate%20confetti%20particles%20%F0%9F%8E%89.%0A%0ABy%20@hiulit%0A%0A)

or giving it a [star](https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles/stargazers).

Thank you very much!

## 📝 Licenses

- Source code: [MIT License](/LICENSE).
- [GDScriptify](https://github.com/hiulit/gdscriptify): [MIT License](/GDSCRIPTIFY_LICENSE).

Powered by [GDScriptify](https://github.com/hiulit/gdscriptify).
