extends Area2D

func _on_body_entered(body: RigidBody2D) -> void:
	body.add_constant_force(Vector2(0, -1000).rotated(rotation))


func _on_body_exited(body: RigidBody2D) -> void:
	body.constant_force = Vector2.ZERO
