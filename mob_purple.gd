extends "res://mob.gd"

@onready var UI = %UI

func _on_hitbox_area_entered(area):
	if area.name == "Bullet":
		if area.hexColor == "#800080":
			queue_free()
			UI.update_score()
	pass # Replace with function body.

