extends CharacterBody2D

const SPEED = 1

func _physics_process(delta: float) -> void:
	var direction_x := Input.get_axis("left", "right")
	var direction_y := Input.get_axis("up", "down")
	var speed = SPEED * (delta * 100)
	
	var motion = Vector2(direction_x, direction_y).normalized() * speed
	move_and_collide(motion)
