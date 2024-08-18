extends CanvasLayer

func _ready() -> void:
	$VictoryMenu.hide()

func _process(delta: float) -> void:
	pass

func show_victory_menu() -> void:
	$VictoryMenu.show()

func _on_quit_button_pressed() -> void:
	get_tree().quit()
