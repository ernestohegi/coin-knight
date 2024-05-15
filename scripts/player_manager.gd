extends Resource

class_name PlayerManager

@export var lives: int

func reset_lives():
	lives = 3

func get_lives():
	return lives

func is_dead():
	return lives == 0
	
func kill():
	lives -= 1
