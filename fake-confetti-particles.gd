tool
extends Node2D

export (bool) var emitting = false setget _set_emitting
export (int, "Square", "Circle") var type = 0
export (int) var amount = 150
export (bool) var random_amount = true
export (float) var size = 3.0
export (bool) var random_size = true
export (Rect2) var visibility_rect = Rect2(0.0, 0.0, 1024.0, 600.0)
export (Array) var colors = [
	Color("#008751"),
	Color("#00e436"),
	Color("#29adff"),
	Color("#7e2553"),
	Color("#83769c"),
	Color("#ff004d"),
	Color("#ff77a8"),
	Color("#ffa300"),
	Color("#ffec27"),
]
export (bool) var random_position = true
export (bool) var one_shot = false
export (bool) var fade = true
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
