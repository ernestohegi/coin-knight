extends Area2D

const player_manager = preload("res://resources/player_manager.tres")

@onready var ui = %UI
@onready var game_manager = $"../GameManager"
@onready var victory_screen = $"../Environment/VictoryScreen"

func _on_body_entered(_body):
	print('entering')
	
	var score = game_manager.get_score()
	var max_score = game_manager.get_max_score()
	
	if score == max_score:
		victory_screen.visible = true


