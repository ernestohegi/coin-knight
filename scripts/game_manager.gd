extends Node

const MAX_SCORE = 12
var score = 0

@onready var ui = %UI

func add_point():
	score += 1
	ui.update_score(score)

func get_score():
	return score

func get_max_score():
	return MAX_SCORE
