extends Area2D

@export var speed = 500
@export var direction : String = "right"
@export var hexColor: String = "#fff"

@onready var player = $Player
@onready var sprite = $Sprite2D

var _Fila = Fila.new()

func _ready():
	sprite.modulate = Color.html(hexColor)
	if direction == "right" or direction == "left":
		rotation = 0
	elif direction == "up":
		rotation_degrees = 270.0
	elif direction == "down":
		rotation_degrees = 90.0
	pass

func _physics_process(delta):
	if direction == "right":
		global_position.x += speed * delta
	elif direction == "left":
		global_position.x -= speed * delta
	elif direction == "up":
		global_position.y -= speed * delta
	elif direction == "down":
		global_position.y += speed * delta


func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()

