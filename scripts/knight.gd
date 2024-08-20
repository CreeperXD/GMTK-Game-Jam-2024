extends RigidBody2D

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node) -> void:
	AudioManager.play_sfx(2)
