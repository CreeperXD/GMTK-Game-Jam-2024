extends CharacterBody2D

var original_scale: Vector2

func _ready() -> void:
	original_scale = scale

func _process(delta: float) -> void:
	pass

func _on_scale_x_control_scaled(value: float) -> void:
	scale.x = original_scale.x * value

func _on_scale_y_control_scaled(value: float) -> void:
	scale.y = original_scale.y * value

#BUG: ball "floating" if scale control's initial current scale value is more than 1
