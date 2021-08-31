# Godot 3 2D Fake Confetti Particles

A script to simulate confetti particles 🎉.

![Fake Confetti Particles Example](examples/fake_confetti_particles_example.gif)

## 🕹️ Demo

- Clone the repository or [download](https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles/archive/master.zip) it in a ZIP file.
- Open `project.godot`.
- Play around 🙂.

## 🛠️ Setup

## Parameters

![Fake Confetti Particles Parameters](examples/fake_confetti_particles_parameters.png)

### Emitting

| Name | Type | Description | Default |
| - | - | - | - |
| `emitting` | `bool` | If `true`, particles are being emitted. | `false` |

### Type

| Name | Type | Description | Default |
| - | - | - | - |
| `type` | `int` | The type of particles. Can be squares or circles. | `Square` |

### Amount

| Name | Type | Description | Default |
| - | - | - | - |
| `amount` | `int` | The number of particles. | `150` |

### Random Amount

| Name | Type | Description | Default |
| - | - | - | - |
| `random_amount` | `bool` | If `true`, the number of particles can be a random number between `amount / 2` and `amount * 2`. If `false`, the number of particles will be the exact number in `amount`. | `true` |

### Size

| Name | Type | Description | Default |
| - | - | - | - |
| `size` | `float` | The size of the particles. If the particles are squares, `size` is the length of their sides. If the particles are circles, `size` is their radius. | `3.0` |

### Visibility Rect

| Name | Type | Description | Default |
| --- | - | - | - |
| `visibility_rect` | `Rect2` | Controls the visibility of the particles. | `Rect2(0.0, 0.0, 1024.0, 600.0)` |

### Colors

| Name | Type | Description | Default |
| - | - | - | - |
| `colors` | `Array` | The color/s of the particles. | The [PICO-8 palette](https://lospec.com/palette-list/pico-8). |

### Random Position

| Name | Type | Description | Default |
| - | - | - | - |
| `random_position` | `bool` | If `true`, the initial position of the particles can be a random position in `visibility_rect`. If `false`, the initial position of the particles will be `Vector(0, 0)`. | `true` |

### One shot

| Name | Type | Description | Default |
| - | - | - | - |
| `one_shot` | `bool` | If `true`, only one emission cycle occurs. | `false` |

### Fade

| Name | Type | Description | Default |
| - | - | - | - |
| `fade` | `bool` | If `true`, the particles will gradually fade. If `false`, the particles will end abruptly. | `true` |

### Timer Wait Time

| Name | Type | Description | Default |
| - | - | - | - |
| `timer_wait_time` | `float` | The duration, in seconds, of the emission cycle. | `1.0` |

## 🗒️ Changelog

See [CHANGELOG](/CHANGELOG.md).

## 👤 Author

**hiulit**

- Twitter: [@hiulit](https://twitter.com/hiulit)
- GitHub: [@hiulit](https://github.com/hiulit)

## 🤝 Contributing

Feel free to:

- [Open an issue](https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles/issues) if you find a bug.
- [Create a pull request](https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles/pulls) if you have a new cool feature to add to the project.
- [Start a new discussion](https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles/discussions) about a feature request.

## 🙌 Supporting this project

If you love this project or find it helpful, please consider supporting it through any size donations to help make it better ❤️.

[![Become a patron](https://img.shields.io/badge/Become_a_patron-ff424d?logo=Patreon&style=for-the-badge&logoColor=white)](https://www.patreon.com/hiulit)

[![Suppor me on Ko-Fi](https://img.shields.io/badge/Support_me_on_Ko--fi-F16061?logo=Ko-fi&style=for-the-badge&logoColor=white)](https://ko-fi.com/F2F7136ND)

[![Buy me a coffee](https://img.shields.io/badge/Buy_me_a_coffee-FFDD00?logo=buy-me-a-coffee&style=for-the-badge&logoColor=black)](https://www.buymeacoffee.com/hiulit)

[![Donate Paypal](https://img.shields.io/badge/PayPal-00457C?logo=PayPal&style=for-the-badge&label=Donate)](https://www.paypal.com/paypalme/hiulit)

If you can't, consider sharing it with the world...

[![](https://img.shields.io/badge/Share_on_Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/intent/tweet?url=https%3A%2F%2Fgithub.com%2Fhiulit%2FGodot-3-2D-Fake-Confetti-Particles&text=%22Godot+3+2D+Fake+Confetti+Particles%22%0D%0AA+script+to+simulate+confetti+particles+by+%40hiulit)

... or giving it a [star ⭐️](https://github.com/hiulit/Godot-3-2D-Fake-Confetti-Particles/stargazers).

## 📝 Licenses

- Source code: [MIT License](/LICENSE).
