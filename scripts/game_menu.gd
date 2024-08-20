extends CanvasLayer

func _ready() -> void:
	$VictoryMenu.hide()
	$PauseMenu.hide()

func _process(delta: float) -> void:
	pass

func show_victory_menu() -> void:
	$VictoryMenu.show()

func hide_pause_button() -> void:
	$PauseButton.hide()

func _on_next_level_button_pressed() -> void:
	SceneManager.change_to_next_scene()

func _on_pause_button_pressed() -> void:
	get_tree().paused = true
	$PauseMenu.show()

func _on_restart_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_main_menu_button_pressed() -> void:
	get_tree().paused = false
	SceneManager.change_scene(0)

func _on_resume_button_pressed() -> void:
	get_tree().paused = false
	$PauseMenu.hide()

func _on_button_hover() -> void:
	AudioManager.play_sfx(3)

func _on_button_click() -> void:
	AudioManager.play_sfx(4)
