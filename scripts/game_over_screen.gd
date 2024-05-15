extends CanvasLayer

@onready var restart_button = $Panel/RestartButton
@onready var quit_button = $Panel/QuitButton
@onready var game_over_screen = $"."

const PLAYER_MANAGER = preload("res://resources/player_manager.tres")

# Called when the node enters the scene tree for the first time.
func _ready():
	restart_button.pressed.connect(_handle_restart)
	quit_button.pressed.connect(_handle_quit)
	
func _handle_restart():
	print('restart')
	self.visible = false
	Engine.time_scale = 1
	PLAYER_MANAGER.reset_lives()
	get_tree().reload_current_scene()
	
func _handle_quit():
	print('quit')
	get_tree().quit()
