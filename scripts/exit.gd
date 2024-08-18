extends Area2D

signal entered

func _on_body_entered(body: Node2D) -> void:
	entered.emit()
