extends Resource

class_name PlayerManager

@export var lives: int

func _init(p_lives = 0):
	print('init')
	lives = p_lives

func get_lives():
	return lives

func is_dead():
	return lives == 0
	
func kill():
	lives -= 1
