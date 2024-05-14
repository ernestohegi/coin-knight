extends Node

var score = 0

@onready var ui = %UI

func add_point():
	score += 1
	ui.update_score(score)
