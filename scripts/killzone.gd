extends Area2D

@onready var timer = $Timer

const player_manager = preload("res://resources/player_manager.tres")

func _on_body_entered(body):
	player_manager.kill()

	var lives = player_manager.get_lives()

	print('You have ' + str(player_manager.lives) + ' lives left')

	if (player_manager.is_dead()):
		print('game over')
	else:
		Engine.time_scale = 0.3
		body.get_node("CollisionShape2D").queue_free()
		timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
