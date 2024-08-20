extends CanvasLayer

func _ready() -> void:
	show_main_menu()

func show_main_menu() -> void:
	$MainMenu.show()
	$LevelSelectMenu.hide()
	$SettingsMenu.hide()

func show_level_select_menu() -> void:
	$MainMenu.hide()
	$LevelSelectMenu.show()
	$SettingsMenu.hide()

func show_settings_menu() -> void:
	$MainMenu.hide()
	$LevelSelectMenu.hide()
	$SettingsMenu.show()

func _on_play_button_pressed() -> void:
	show_level_select_menu()

func _on_settings_button_pressed() -> void:
	show_settings_menu()

func _on_quit_button_pressed() -> void:
	get_tree().quit()

func _on_main_menu_button_pressed() -> void:
	show_main_menu()

func _on_music_slider_value_changed(value: float) -> void:
	AudioManager.music_volume = value

func _on_sfx_slider_drag_ended(value_changed: bool) -> void:
	AudioManager.sfx_volume = $SettingsMenu/SFXSection/SFXSlider.value
	AudioManager.play_sfx(1)

func _on_button_hover() -> void:
	AudioManager.play_sfx(3)

func _on_button_click() -> void:
	AudioManager.play_sfx(4)
