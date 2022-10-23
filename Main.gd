extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("/root/Main/GameView/TestTree").call_deferred("set_item", "/root/Main/Chest")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# ROADMAP: What do I want from this?
# * Display people as an assemblage of parts
# * Colony management menu
#   - World as a container, which stores the current time and is responsible for advancing
#   - Settlement contains items and has processes turning one item into another.
