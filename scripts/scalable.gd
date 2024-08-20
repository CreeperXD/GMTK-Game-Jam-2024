extends Node2D

var original_scale: Vector2
@onready var object: CharacterBody2D = $Object

func _ready() -> void:
	original_scale = object.scale
	$ScaleXControl.initialise()
	$ScaleYControl.initialise()

func _process(delta: float) -> void:
	pass

func _on_scale_x_control_scaled(value: float) -> void:
	object.scale.x = original_scale.x * value

func _on_scale_y_control_scaled(value: float) -> void:
	object.scale.y = original_scale.y * value

#BUG: ball "floating" if scale control's initial current scale value is more than 1
