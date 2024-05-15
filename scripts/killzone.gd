extends Area2D

@onready var timer = $Timer
@onready var ui = %UI
@onready var game_over_screen = $"../GameOverScreen"

const player_manager = preload("res://resources/player_manager.tres")

func kill(body):
	player_manager.kill()

	ui.update_lives(player_manager.get_lives())

	if (player_manager.is_dead()):
		Engine.time_scale = 0.1
		print('game over')
		game_over_screen.visible = true
	else:
		Engine.time_scale = 0.3
		body.get_node("CollisionShape2D").queue_free()
		timer.start()

func _on_body_entered(body):
	kill(body)

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
