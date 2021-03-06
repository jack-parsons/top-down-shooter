extends Area2D

export (float) var speed

const BULLET_SPAWN_DIST = 25

var velocity = Vector2()

func start(pos, mouse_pos):
	$Shoot.play(0)
	position = pos + (mouse_pos-pos).normalized() * BULLET_SPAWN_DIST
	velocity = (mouse_pos-pos).normalized() * speed

func _process(delta):
	position += velocity * delta

func _on_Bullet_body_entered(body):
	queue_free()