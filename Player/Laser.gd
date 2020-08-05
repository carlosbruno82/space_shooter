extends RigidBody2D

onready var laserSound = $LaserSound

const HitEffect = preload("res://Effects/HitEffect.tscn")

func _ready():
	laserSound.play()

func create_hit_effect():
	var hitEffect = HitEffect.instance()
	var main = get_tree().current_scene
	main.add_child(hitEffect)
	hitEffect.global_position = global_position
