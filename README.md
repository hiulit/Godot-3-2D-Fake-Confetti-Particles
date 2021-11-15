# Godot 3 2D Fake Confetti Particles

![Godot v3.x](https://img.shields.io/badge/Godot-v3.x-478cbf?logo=godot-engine&logoColor=white&style=flat-square) ![release v1.1.0](https://img.shields.io/badge/release-v1.1.0-478cbf?style=flat-square) ![MIT license](https://img.shields.io/badge/license-MIT-478cbf?style=flat-square)

A script to simulate confetti particles 🎉.

![Godot 3 2D Fake Confetti Particles banner](examples/fake_confetti_particles_example.gif)

## Table of contents

### Variables

|Name|Type|Default|
|:-|:-|:-|
|[emitting](#emitting)|`bool`|`false`|
|[type](#type)|`int`|`0`|
|[amount](#amount)|`int`|`150`|
|[random_amount](#random_amount)|`bool`|`true`|
|[size](#size)|`float`|`3.0`|
|[random_size](#random_size)|`bool`|`true`|
|[visibility_rect](#visibility_rect)|`Rect2`|`Rect2(0.0, 0.0, 1024.0, 600.0)`|
|[colors](#colors)|`Array`|`[Color("#008751"),Color("#00e436"),Color("#29adff"),Color("#7e2553"),Color("#83769c"),Color("#ff004d"),Color("#ff77a8"),Color("#ffa300"),Color("#ffec27")]`|
|[random_position](#random_position)|`bool`|`true`|
|[one_shot](#one_shot)|`bool`|`false`|
|[fade](#fade)|`bool`|`true`|
|[timer_wait_time](#timer_wait_time)|`float`|`1.0`|

## Variables

### emitting

```gdscript
export (bool) var emitting = false setget _set_emitting
```

If `true`, particles are being emitted.

|Name|Type|Default|Setter|
|:-|:-|:-|:-|
|`emitting`|`bool`|`false`|`_set_emitting`|

### type

```gdscript
export (int, "Square", "Circle") var type = 0
```

The type of particles:


- `0 (Square)`.
- `1 (Circle)`.

|Name|Type|Default|
|:-|:-|:-|
|`type`|`int`|`0`|

### amount

```gdscript
export (int) var amount = 150
```

The number of particles.

|Name|Type|Default|
|:-|:-|:-|
|`amount`|`int`|`150`|

### random_amount

```gdscript
export (bool) var random_amount = true
```

If `true`, the number of particles can be a random number between `amount / 2` and `amount * 2`.

 If `false`, the number of particles will be the exact number in [amount](#amount).

|Name|Type|Default|
|:-|:-|:-|
|`random_amount`|`bool`|`true`|

### size

```gdscript
export (float) var size = 3.0
```

The size of the particles.

 If the particles are squares, `size` is the length of their sides. If the particles are circles, `size` is their radius.

|Name|Type|Default|
|:-|:-|:-|
|`size`|`float`|`3.0`|

### random_size

```gdscript
export (bool) var random_size = true
```

If `true`, the size of the particles can be a random number between `size / 2` and `size * 2`.

 If `false`, the size of the particles will be the exact number in [size](#size).

|Name|Type|Default|
|:-|:-|:-|
|`random_size`|`bool`|`true`|

### visibility_rect

```gdscript
export (Rect2) var visibility_rect = Rect2(0.0, 0.0, 1024.0, 600.0)
```

Controls the visibility of the particles.

|Name|Type|Default|
|:-|:-|:-|
|`visibility_rect`|`Rect2`|`Rect2(0.0, 0.0, 1024.0, 600.0)`|

### colors

```gdscript
export (Array) var colors = [Color("#008751"),Color("#00e436"),Color("#29adff"),Color("#7e2553"),Color("#83769c"),Color("#ff004d"),Color("#ff77a8"),Color("#ffa300"),Color("#ffec27")]
```

The color/s of the particles.

|Name|Type|Default|
|:-|:-|:-|
|`colors`|`Array`|`[Color("#008751"),Color("#00e436"),Color("#29adff"),Color("#7e2553"),Color("#83769c"),Color("#ff004d"),Color("#ff77a8"),Color("#ffa300"),Color("#ffec27")]`|

### random_position

```gdscript
export (bool) var random_position = true
```

If `true`, the initial position of the particles can be a random position in [visibility_rect](#visibility_rect).

 If `false`, the initial position of the particles will be `Vector(0, 0)`.

|Name|Type|Default|
|:-|:-|:-|
|`random_position`|`bool`|`true`|

### one_shot

```gdscript
export (bool) var one_shot = false
```

If `true`, only one emission cycle occurs.

|Name|Type|Default|
|:-|:-|:-|
|`one_shot`|`bool`|`false`|

### fade

```gdscript
export (bool) var fade = true
```

If `true`, the particles will gradually fade.

 If `false`, the particles will end abruptly.

|Name|Type|Default|
|:-|:-|:-|
|`fade`|`bool`|`true`|

### timer_wait_time

```gdscript
export (float) var timer_wait_time = 1.0
```

The duration (in seconds) of the emission cycle.

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

[![Suppor me on Ko-Fi](https://img.shields.io/badge/Support_me_on_Ko--fi-F16061?logo=Ko-fi&style=for-the-badge&logoColor=white)](https://ko-fi.com/hiulit)

[![Donate Paypal](https://img.shields.io/badge/PayPal-00457C?logo=PayPal&style=for-the-badge&label=Donate)](https://www.paypal.com/paypalme/hiulit)

If you can't, consider sharing it with the world...

[![Share on Twitter](https://img.shields.io/badge/Share_on_Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/intent/tweet?url=https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles&text=%22Godot%203%202D%20Fake%20Confetti%20Particles%22%0AA%20script%20to%20simulate%20confetti%20particles%20%F0%9F%8E%89.%0A%0ABy%20@hiulit%0A%0A)

... or giving it a [star](https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles/stargazers).

Thank you very much!

## 📝 Licenses

- Source code: [MIT License](/LICENSE).
- Documentation ([GDScriptify](https://github.com/hiulit/GDScriptify)): [MIT License](/LICENSE_GDSCRIPTIFY.txt).

---

Powered by [GDScriptify](https://github.com/hiulit/GDScriptify).
