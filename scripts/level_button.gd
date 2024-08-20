extends Button

@export var level: int = 1

func _ready():
	text = "Level " + str(level)

func _on_pressed():
	SceneManager.change_scene(level)
	AudioManager.play_sfx(4)

func _on_mouse_entered() -> void:
	AudioManager.play_sfx(3)
