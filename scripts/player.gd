class_name player
extends CharacterBody3D

const JUMP : float = 6.0
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	velocity.y -= gravity * delta
	if is_on_floor() :
		velocity.y = JUMP 
	move_and_slide()
