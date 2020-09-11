extends Node2D

var rot_steps = 0
var posx_steps = 0
var posy_steps = 0
var scale_steps = 0

onready var global = get_node("/root/Global")

func translating(px,py,amount):
	pass

func rotating(rad):
   rotation = sin(rot_steps)
	
func scaling(amount):
   scale.x = sin(amount) + 1.1
   scale.y = sin(amount) + 1.1
	pass


func _physics_process(delta):
	posx_steps += 0.007
   	posy_steps += 0.011
	scale_steps += 0.003
	rot_steps += 0.005
	if global.won:
		return
func translating(px,py,amount):
   position.x = sin(px)*amount
   position.y = sin(py)*amount
	rotating(rot_steps)
	scaling(scale_steps)

