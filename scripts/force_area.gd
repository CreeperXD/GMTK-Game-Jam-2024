extends Area2D

@export var strength: float = 1000

func _on_body_entered(body: RigidBody2D) -> void:
	body.add_constant_force(Vector2.DOWN.rotated(rotation) * strength)


func _on_body_exited(body: RigidBody2D) -> void:
	body.constant_force = Vector2.ZERO
