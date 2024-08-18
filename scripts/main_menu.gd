extends CanvasLayer

func _ready() -> void:
	show_main_menu()

func show_main_menu() -> void:
	$MainMenu.show()
	$LevelSelectMenu.hide()

func show_level_select_menu() -> void:
	$MainMenu.hide()
	$LevelSelectMenu.show()

func _on_play_button_pressed() -> void:
	show_level_select_menu()

func _on_quit_button_pressed() -> void:
	get_tree().quit()
