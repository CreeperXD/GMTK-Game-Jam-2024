extends Node

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass

func _on_exit_entered() -> void:
	$GameMenu.hide_pause_button()
	$GameMenu.show_victory_menu()
