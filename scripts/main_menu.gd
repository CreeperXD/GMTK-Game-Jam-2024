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

func _on_music_volume_slider_value_changed(value: float) -> void:
	Options.music_volume = value

func _on_sound_effects_volume_slider_drag_ended(value_changed: bool) -> void:
	Options.sound_effects_volume = $SettingsMenu/SoundEffectsSection/SoundEffectsVolumeSlider.value
	$SettingsMenu/SoundEffectsSection/EndScalePlayer.play()
	#TODO: continue implementing, maybe create audiomanager
