extends Control

signal scaled(value: float)

func _ready() -> void:
	scaled.emit($HSlider.value)

func _process(delta: float) -> void:
	$HSlider/ProgressBar.value = $HSlider.value

func _on_progress_bar_value_changed(value: float) -> void:
	scaled.emit(value)
