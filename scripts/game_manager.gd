extends Node

var score = 0

@onready var score_text = %Score
@onready var ui = %UI

func add_point():
	score += 1
	score_text.text = str(score) + " coins"
	ui.update_score(score)
