extends Control

@export var max_scale_value: float = 2
@export var current_scale_value: float = 1

signal scaled(value: float)

func _ready() -> void:
	$HSlider.max_value = max_scale_value
	$HSlider/ProgressBar.max_value = max_scale_value
	$HSlider.value = current_scale_value

func _process(delta: float) -> void:
	$HSlider/ProgressBar.value = $HSlider.value

func _on_progress_bar_value_changed(value: float) -> void:
	scaled.emit(value)
