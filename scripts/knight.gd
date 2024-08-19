extends RigidBody2D

func _ready() -> void:
	$AudioListener2D.make_current()
	
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node) -> void:
	$GruntPlayer.play()
