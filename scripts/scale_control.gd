extends Control

@export var max_scale_value: float = 2
@export var current_scale_value: float = 1

signal scaled(value: float)

func _ready() -> void:
	$HSlider.share($HSlider/ProgressBar)
	$HSlider.max_value = max_scale_value
	$HSlider.value = current_scale_value

func _on_progress_bar_value_changed(value: float) -> void:
	scaled.emit(value)

func _on_h_slider_drag_started() -> void:
	$HSlider/StartScalePlayer.play()

func _on_h_slider_drag_ended(value_changed: bool) -> void:
	$HSlider/EndScalePlayer.play()
