extends CanvasLayer

func _ready() -> void:
	$VictoryMenu.hide()

func _process(delta: float) -> void:
	pass

func show_victory_menu() -> void:
	$VictoryMenu.show()

func _on_next_level_button_pressed() -> void:
	SceneManager.change_to_next_scene()
