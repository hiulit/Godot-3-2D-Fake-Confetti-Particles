tool
extends Node2D
## Draw-based 2D confetti particles emitter.
class_name FakeConfettiParticles

## If `true`, particles are being emitted.
export (bool) var emitting = false setget _set_emitting
## The type of particles:
##
## - `0 (Square)`.
## - `1 (Circle)`.
export (int, "Square", "Circle") var type = 0
## The number of particles.
export (int) var amount = 150
## If `true`, the number of particles can be a
## random number between `amount / 2` and `amount * 2`.
##
## If `false`, the number of particles will be the exact number in @link_name {amount}.
export (bool) var random_amount = true
## The size of the particles.
##
## If the particles are squares, `size` is the length of their sides.
## If the particles are circles, `size` is their radius.
export (float) var size = 3.0
## If `true`, the size of the particles can be a
## random number between `size / 2` and `size * 2`.
##
## If `false`, the size of the particles will be the exact number in @link_name {size}.
export (bool) var random_size = true
## Controls the visibility of the particles.
export (Rect2) var visibility_rect = Rect2(0.0, 0.0, 1024.0, 600.0)
## The color/s of the particles.
export (Array) var colors = [
	Color("#008751"),
	Color("#00e436"),
	Color("#29adff"),
	Color("#7e2553"),
	Color("#83769c"),
	Color("#ff004d"),
	Color("#ff77a8"),
	Color("#ffa300"),
	Color("#ffec27")
]
## If `true`, the initial position of the particles
## can be a random position in @link_name {visibility_rect}.
##
## If `false`, the initial position of the particles will be `Vector(0, 0)`.
export (bool) var random_position = true
## If `true`, only one emission cycle occurs.
export (bool) var one_shot = false
## If `true`, the particles will gradually fade.
##
## If `false`, the particles will end abruptly.
export (bool) var fade = true
## The duration (in seconds) of the emission cycle.
export (float) var timer_wait_time = 1.0

var particles = []
var particles_amount
var particles_position
var timer = 0.0


func _ready():
	set_process(false)
	self.emitting = not Engine.editor_hint


func _process(delta):
	timer += delta

	if timer > timer_wait_time:
		timer = 0.0

		if one_shot:
			self.emitting = false
			if not Engine.editor_hint:
				queue_free()
		else:
			_create_particles()

	_particles_explode(delta)

	update()


func _draw():
	for particle in particles:
		if type == 0:
			draw_rect(Rect2(particle.position, particle.size), particle.color)
		elif type == 1:
			draw_circle(
				particle.position, ((particle.size.x + particle.size.y) / 2) / 2, particle.color
			)


func _create_particles():
	particles.clear()

	if random_amount:
		particles_amount = _get_random_amount()
	else:
		particles_amount = amount

	if random_position:
		particles_position = _get_random_position()
	else:
		particles_position = Vector2.ZERO

	for _i in particles_amount:
		var particle = {
			color = _get_random_color(),
			gravity = _get_random_gravity(),
			position = particles_position,
			size = _get_random_size(),
			velocity = _get_random_velocity()
		}

		if not random_size:
			particle.size = size

		particles.append(particle)


func _particles_explode(delta):
	for particle in particles:
		if fade:
			particle.color.a -= 0.6 * delta

		particle.velocity.x *= .999
		particle.velocity.y *= .991

		particle.position += (particle.velocity + particle.gravity) * delta


func _get_random_color():
	return colors[randi() % colors.size()]


func _get_random_gravity():
	return Vector2(rand_range(-200, 200), rand_range(400, 800))


func _get_random_amount():
	return round(rand_range(amount / 2.0, amount * 2.0))


func _get_random_position():
	var x = rand_range(0, visibility_rect.size.x)
	var y = rand_range(0, visibility_rect.size.y)

	return Vector2(x, y)


func _get_random_size():
	var min_size = int(ceil(size / 2.0))
	var max_size = int(ceil(size * 2.0))
	var random_min_max_size = randi() % (max_size - min_size + 1) + min_size

	return Vector2(random_min_max_size, random_min_max_size)


func _get_random_velocity():
	return Vector2(rand_range(-200, 200), rand_range(-600, -800))


func _set_emitting(new_value):
	if new_value != emitting:
		emitting = new_value

		if emitting:
			set_process(true)
			_create_particles()
		else:
			set_process(false)
			particles.clear()
			timer = 0.0
			update()
			property_list_changed_notify()
